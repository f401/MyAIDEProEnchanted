.class Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000002;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private final this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;


# direct methods
.method constructor <init>(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000002;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    return-void
.end method

.method static access$0(Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000002;)Lnet/margaritov/preference/colorpicker/ColorPickerDialog;
    .registers 2

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000002;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Editable;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "III)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "III)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/high16 v3, -0x10000

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000002;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    invoke-static {v0}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->access$L1000012(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000002;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->access$S1000012(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;Z)V

    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000002;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    invoke-static {v0}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->access$L1000003(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-gt v1, v2, :cond_2e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_61

    :cond_2e
    :try_start_2e
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->convertToColorInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000002;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->access$S1000012(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;Z)V

    iget-object v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000002;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    invoke-static {v1}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->access$L1000000(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)Lnet/margaritov/preference/colorpicker/ColorPickerView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->setColor(IZ)V

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000002;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    invoke-static {v0}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->access$L1000003(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000002;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    invoke-static {v1}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->access$L1000005(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_55} :catch_56

    goto :goto_10

    :catch_56
    move-exception v0

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000002;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    invoke-static {v0}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->access$L1000003(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_10

    :cond_61
    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000002;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    invoke-static {v0}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->access$L1000003(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_10
.end method
