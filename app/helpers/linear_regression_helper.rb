module LinearRegressionHelper
  # This Class is based from the GitHub Repo "linear-regression" of "daugaard" having been modified to
  # also calculate the mean absolute percentage error method
  class RubyLinearRegression
    attr_reader :x, :y, :theta, :mu, :sigma, :lambda

    def initialize
      @mu = 0
      @sigma = 1
    end

    # Method that loads and normalizes the training data; must be called prior to training.
    # Arguments:
    #   x_data: (Two dimensional array with the independent variables of your training data)
    #   y_data: (Array with the dependent variables of your training data)
    def load_training_data(x_data, y_data)
      # Normalize the x_data
      x_data = normalize_data(x_data)

      # Add 1 column to x_data
      x_data = x_data.map { |row| [1].concat(row) }

      # Build the x Matrix and y Vector
      @x = Matrix.rows(x_data)
      @y = Matrix.rows( y_data.collect { |i| [i] } )

      # Create a Matrix with one row and the same number of columns as the x_data
      @theta = Matrix.zero(@x.column_count, 1)
    end

    # Method that computes the mean absolute percentage error
    def mean_absolute_percentage_error
      prediction_y = (@x * @theta).to_a.flatten
      real_y = @y.to_a.flatten

      errors = 0

      prediction_y.size.times do |i|
        errors += (real_y[i] - prediction_y[i]).abs.fdiv(real_y[i]) unless real_y[i].zero?
      end

      result = (errors.fdiv(prediction_y.size) * 100)

      return result.round
    end

    # Calculates the optimal theta using the normal equation
    def train_normal_equation l = 0
      begin
        @lambda = l
        lambda_matrix = Matrix.build(@theta.row_size, @theta.row_size) do |c, r|
          ((c == 0 && r == 0) || c != r) ? 0 : 1
        end

        # Calculate the optimal theta using the normal equation
        # theta = ( X' * X )^1 * X' * y
        @theta = (@x.transpose * @x + @lambda * lambda_matrix).inverse * @x.transpose * @y

        return @theta

      # If there's an error while manipulating the Matrices, then make the weight prediction zero
      rescue *Exception
        @sigma = [0, 0, 0]
      end
    end

    # Makes a prediction based on your trained model
    # Arguments:
    #   data: (Array of independent variables to base your prediction on)
    def predict data
      # normalize
      data.each_index do |i|
        data[i] = (data[i] - @mu[i]) / @sigma[i].to_f
      end

      # Add 1 column to prediction data
      data = [1].concat(data)

      # Perform prediction
      prediction = (Matrix[data] * @theta)[0, 0].to_f

      # If there's any error with the prediction, then make the weight predicted zero
      prediction = 0 if @sigma.include?(0) || @theta.any? { |i| !i.infinite?.nil? }

      return prediction
    end

    private

    def normalize_data(x_data, mu = nil, sigma = nil)
      row_size = x_data.size
      column_count = x_data[0].is_a?( Array) ? x_data[0].size : 1

      x_norm = Array.new(row_size)
      @mu = Array.new(column_count)
      @sigma = Array.new(column_count)

      0.upto(column_count - 1) do |column|
        column_data = x_data.map { |e| e[column] }
        @mu[column] = column_data.inject { |sum, e| sum + e } / row_size
        @sigma[column] = (column_data.max - column_data.min)
      end

      0.upto(row_size - 1) do |row|
        row_data = x_data[row]
        x_norm[row] = Array.new(column_count)
        row_data.each_index do |i|
          x_norm[row][i] = (row_data[i] - @mu[i]) / @sigma[i].to_f
        end
      end

      return x_norm
    end
  end
end
