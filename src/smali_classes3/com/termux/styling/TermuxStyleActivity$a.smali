.class public final Lcom/termux/styling/TermuxStyleActivity$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/styling/TermuxStyleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 8

    const/4 v5, 0x0

    const/4 v3, 0x0

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lcom/termux/yinli_a/k/b/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/styling/TermuxStyleActivity$a;->b:Ljava/lang/String;

    const/16 v1, 0x2d

    const/16 v2, 0x20

    const/4 v4, 0x4

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/termux/yinli_a/n/e;->a(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/4 v4, 0x6

    move v2, v3

    invoke-static/range {v0 .. v5}, Lcom/termux/yinli_a/n/e;->b(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Lcom/termux/yinli_a/k/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-static {v0}, Lcom/termux/styling/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/styling/TermuxStyleActivity$a;->a:Ljava/lang/String;

    return-void

    :cond_1
    new-instance v0, Lcom/termux/yinli_a/f;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Lcom/termux/yinli_a/f;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/termux/styling/TermuxStyleActivity$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/termux/styling/TermuxStyleActivity$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/termux/styling/TermuxStyleActivity$a;->a:Ljava/lang/String;

    return-object v0
.end method
