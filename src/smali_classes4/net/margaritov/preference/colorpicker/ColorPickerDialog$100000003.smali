.class Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000003;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private final this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;


# direct methods
.method constructor <init>(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000003;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    return-void
.end method

.method static access$0(Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000003;)Lnet/margaritov/preference/colorpicker/ColorPickerDialog;
    .registers 2

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000003;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    return-object v0
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 9
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v4, -0x10000

    const/4 v0, 0x6

    if-ne p2, v0, :cond_6f

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "input_method"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000003;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    invoke-static {v0}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->access$L1000003(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-gt v2, v3, :cond_37

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_65

    :cond_37
    :try_start_37
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->convertToColorInt(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000003;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    invoke-static {v2}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->access$L1000000(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)Lnet/margaritov/preference/colorpicker/ColorPickerView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->setColor(IZ)V

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000003;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    invoke-static {v0}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->access$L1000003(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000003;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    invoke-static {v2}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->access$L1000005(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V
    :try_end_58
    .catch Ljava/lang/IllegalArgumentException; {:try_start_37 .. :try_end_58} :catch_5a

    :goto_58
    move v0, v1

    :goto_59
    return v0

    :catch_5a
    move-exception v0

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000003;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    invoke-static {v0}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->access$L1000003(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_58

    :cond_65
    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000003;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    invoke-static {v0}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->access$L1000003(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_58

    :cond_6f
    move v0, v2

    goto :goto_59
.end method
