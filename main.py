
import matlab.engine
eng = matlab.engine.start_matlab()
eng.dominant_color(nargout=0)


# ans = eng.dominant_color_func(5.0)
# print(ans)