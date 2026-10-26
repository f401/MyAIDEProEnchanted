.class Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000001;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;


# direct methods
.method constructor <init>(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000001;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    return-void
.end method

.method static access$0(Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000001;)Lnet/margaritov/preference/colorpicker/ColorPickerDialog;
    .locals 1

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000001;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method
