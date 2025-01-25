.class Lnet/margaritov/preference/colorpicker/ColorPickerPreference$100000000;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final this$0:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;


# direct methods
.method constructor <init>(Lnet/margaritov/preference/colorpicker/ColorPickerPreference;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference$100000000;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    return-void
.end method

.method static access$0(Lnet/margaritov/preference/colorpicker/ColorPickerPreference$100000000;)Lnet/margaritov/preference/colorpicker/ColorPickerPreference;
    .registers 2

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference$100000000;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

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

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference$100000000;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-virtual {v0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference$100000000;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-virtual {v1}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference$100000000;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    iget-object v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference$100000000;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-static {v1}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->access$L1000004(Lnet/margaritov/preference/colorpicker/ColorPickerPreference;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->onColorChanged(I)V

    return-void
.end method
