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
    .registers 15

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lcom/termux/yinli_a/k/b/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/styling/TermuxStyleActivity$a;->b:Ljava/lang/String;

    const/16 v2, 0x2d

    const/16 v3, 0x20

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/termux/yinli_a/n/e;->a(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 v8, 0x2e

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    move-object v7, p1

    invoke-static/range {v7 .. v12}, Lcom/termux/yinli_a/n/e;->b(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_39

    if-eqz p1, :cond_31

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.Strin…ing(startIndex, endIndex)"

    invoke-static {p1, v0}, Lcom/termux/yinli_a/k/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_39

    :cond_31
    new-instance p1, Lcom/termux/yinli_a/f;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lcom/termux/yinli_a/f;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_39
    :goto_39
    invoke-static {p1}, Lcom/termux/styling/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/termux/styling/TermuxStyleActivity$a;->a:Ljava/lang/String;

    return-void
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
