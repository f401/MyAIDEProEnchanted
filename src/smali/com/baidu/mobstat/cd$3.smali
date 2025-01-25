.class final Lcom/baidu/mobstat/cd$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/cd;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 278
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 280
    invoke-static {}, Lcom/baidu/mobstat/ch;->a()Lcom/baidu/mobstat/ch;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/mobstat/ch;->c()V

    .line 282
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object p1

    const-string p2, "autotrace: connect close, app close"

    invoke-virtual {p1, p2}, Lcom/baidu/mobstat/cx;->a(Ljava/lang/String;)V

    .line 283
    invoke-static {}, Lcom/baidu/mobstat/ch;->a()Lcom/baidu/mobstat/ch;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/baidu/mobstat/ch;->a(I)V

    .line 286
    invoke-static {}, Lcom/baidu/mobstat/ch;->a()Lcom/baidu/mobstat/ch;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/mobstat/ch;->d()V

    return-void
.end method
