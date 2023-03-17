package {
    import flash.display.Sprite;
    import flash.text.TextField;
    import flash.text.TextFormat;
    import flash.text.TextFieldAutoSize;

    public class Main extends Sprite {

        public function Main() {
            // Create the logo
            var logo:Sprite = new FlashContentLogo();
            addChild(logo);
            logo.x = stage.stageWidth / 2 - logo.width / 2;
            logo.y = stage.stageHeight / 2 - logo.height / 2;

            // Create the "Hello World" text field
            var helloWorld:TextField = new TextField();
            var format:TextFormat = new TextFormat();
            format.size = 24;
            format.color = 0xFFFFFF;
            helloWorld.defaultTextFormat = format;
            helloWorld.autoSize = TextFieldAutoSize.CENTER;
            helloWorld.text = "Hello World!";
            addChild(helloWorld);
            helloWorld.x = stage.stageWidth / 2 - helloWorld.width / 2;
            helloWorld.y = logo.y + logo.height + 50;
        }
    }
}

import flash.display.Sprite;

class FlashContentLogo extends Sprite {
    public function FlashContentLogo() {
        graphics.lineStyle(2, 0xFFFFFF);
        graphics.beginFill(0x000000);
        graphics.drawRoundRect(0, 0, 200, 100, 20, 20);
        graphics.endFill();

        var textFormat:TextFormat = new TextFormat();
        textFormat.font = "Arial";
        textFormat.color = 0xFFFFFF;
        textFormat.size = 36;

        var textSprite:Sprite = new Sprite();
        textSprite.graphics.beginFill(0xFFFFFF);
        textSprite.graphics.drawRect(0, 0, 200, 100);
        textSprite.graphics.endFill();

        var textField:TextField = new TextField();
        textField.defaultTextFormat = textFormat;
        textField.text = "FlashContent";
        textField.width = textSprite.width;
        textField.height = textSprite.height;
        textField.selectable = false;
        textField.mouseEnabled = false;
        textField.autoSize = TextFieldAutoSize.CENTER;
        textSprite.addChild(textField);
        addChild(textSprite);

        textSprite.x = this.width / 2 - textSprite.width / 2;
        textSprite.y = this.height / 2 - textSprite.height / 2;
    }
}