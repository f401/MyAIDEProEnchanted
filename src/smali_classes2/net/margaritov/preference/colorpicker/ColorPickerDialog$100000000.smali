.class Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000000;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;


# direct methods
.method constructor <init>(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000000;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    return-void
.end method

.method static access$0(Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000000;)Lnet/margaritov/preference/colorpicker/ColorPickerDialog;
    .registers 2

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000000;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000000;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    invoke-static {v0}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->access$L1000006(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000000;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    invoke-static {v0}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->access$L1000006(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;

    move-result-object v0

    iget-object v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000000;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    invoke-static {v1}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->access$L1000002(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    move-result-object v1

    invoke-virtual {v1}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->getColor()I

    move-result v1

    invoke-interface {v0, v1}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;->onColorChanged(I)V

    :cond_0
    return-void
.end method
