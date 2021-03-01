import java.util.ArrayList;
import java.awt.image.BufferedImage;

public class Document {
  ArrayList<Layer> layers = new ArrayList<Layer>();
  int height, width;
  private String name = "new image";

  Document(int width, int height) {
    this.width = width;
    this.height = height;
    layers.add(new Layer());
  }
  Document(BufferedImage image) {
    this.height = image.getWidth();
    this.width = image.getHeight();
    layers.add(new Layer(image));
  }
  String getName() {
    return name;
  }

  BufferedImage getEditView() {
    return layers.get(0).getLayerData();
  }

  public class Layer {
    BufferedImage image;
    private String name;
    private boolean visible;
    private int opacity;
    //TODO blendmodes

    Layer() {
      try {
          image = ImageIO.read(new File("C:\\Users\\user1\\Desktop\\image2.png"));
      } catch (IOException e) {
          e.printStackTrace();
      }
    }

    Layer(BufferedImage image) {
      this.image = image;
      visible = true;
      opacity = 0xFF;
    }

    BufferedImage getLayerData() {
      return image;
    }
  }
}
