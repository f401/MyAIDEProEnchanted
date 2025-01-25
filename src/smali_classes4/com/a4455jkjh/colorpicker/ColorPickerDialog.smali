.class public Lcom/a4455jkjh/colorpicker/ColorPickerDialog;
.super Lcom/aide/common/ma;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Lcom/a4455jkjh/colorpicker/ColorPickerDialog$a;

.field private final d:Z

.field private e:Lcom/a4455jkjh/colorpicker/a/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/a4455jkjh/colorpicker/ColorPickerDialog$a;)V
    .registers 5

    invoke-direct {p0}, Lcom/aide/common/ma;-><init>()V

    iput-object p1, p0, Lcom/a4455jkjh/colorpicker/ColorPickerDialog;->a:Ljava/lang/String;

    iput p2, p0, Lcom/a4455jkjh/colorpicker/ColorPickerDialog;->b:I

    iput-object p3, p0, Lcom/a4455jkjh/colorpicker/ColorPickerDialog;->c:Lcom/a4455jkjh/colorpicker/ColorPickerDialog$a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a4455jkjh/colorpicker/ColorPickerDialog;->d:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/a4455jkjh/colorpicker/ColorPickerDialog$a;)V
    .registers 5

    invoke-direct {p0}, Lcom/aide/common/ma;-><init>()V

    iput-object p1, p0, Lcom/a4455jkjh/colorpicker/ColorPickerDialog;->a:Ljava/lang/String;

    if-eqz p2, :cond_f

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_f
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/a4455jkjh/colorpicker/ColorPickerDialog;->b:I

    :goto_13
    iput-object p3, p0, Lcom/a4455jkjh/colorpicker/ColorPickerDialog;->c:Lcom/a4455jkjh/colorpicker/ColorPickerDialog$a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a4455jkjh/colorpicker/ColorPickerDialog;->d:Z

    return-void

    :cond_19
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/a4455jkjh/colorpicker/ColorPickerDialog;->b:I

    goto :goto_13
.end method


# virtual methods
.method protected j6(Landroid/app/Activity;)Landroid/app/Dialog;
    .registers 5

    new-instance v0, Lcom/a4455jkjh/colorpicker/a/b;

    invoke-direct {v0, p1}, Lcom/a4455jkjh/colorpicker/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/a4455jkjh/colorpicker/ColorPickerDialog;->e:Lcom/a4455jkjh/colorpicker/a/b;

    iget-object v0, p0, Lcom/a4455jkjh/colorpicker/ColorPickerDialog;->e:Lcom/a4455jkjh/colorpicker/a/b;

    iget v1, p0, Lcom/a4455jkjh/colorpicker/ColorPickerDialog;->b:I

    invoke-virtual {v0, v1}, Lcom/a4455jkjh/colorpicker/a/b;->setColor(I)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/a4455jkjh/colorpicker/ColorPickerDialog;->e:Lcom/a4455jkjh/colorpicker/a/b;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/a4455jkjh/colorpicker/ColorPickerDialog;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d05d7

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d05be

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-boolean v1, p0, Lcom/a4455jkjh/colorpicker/ColorPickerDialog;->d:Z

    if-eqz v1, :cond_3b

    const v1, 0x7f0d06a4

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_3b
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8

    const/4 v4, 0x0

    packed-switch p2, :pswitch_data_2a

    :goto_4
    :pswitch_4  #0xfffffffe
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void

    :pswitch_8  #0xffffffff
    iget-object v0, p0, Lcom/a4455jkjh/colorpicker/ColorPickerDialog;->e:Lcom/a4455jkjh/colorpicker/a/b;

    invoke-virtual {v0}, Lcom/a4455jkjh/colorpicker/a/b;->getColor()I

    move-result v0

    const-string v1, "#%08X"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/a4455jkjh/colorpicker/ColorPickerDialog;->c:Lcom/a4455jkjh/colorpicker/ColorPickerDialog$a;

    invoke-interface {v2, v0, v1}, Lcom/a4455jkjh/colorpicker/ColorPickerDialog$a;->a(ILjava/lang/String;)V

    goto :goto_4

    :pswitch_23  #0xfffffffd
    iget-object v0, p0, Lcom/a4455jkjh/colorpicker/ColorPickerDialog;->c:Lcom/a4455jkjh/colorpicker/ColorPickerDialog$a;

    const/4 v1, 0x0

    invoke-interface {v0, v4, v1}, Lcom/a4455jkjh/colorpicker/ColorPickerDialog$a;->a(ILjava/lang/String;)V

    goto :goto_4

    :pswitch_data_2a
    .packed-switch -0x3
        :pswitch_23  #fffffffd
        :pswitch_4  #fffffffe
        :pswitch_8  #ffffffff
    .end packed-switch
.end method
