.class final Lcom/termux/yinli_a/n/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/termux/yinli_a/m/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/m/a",
        "<",
        "Lcom/termux/yinli_a/l/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/CharSequence;

.field private final b:I

.field private final c:I

.field private final d:Lcom/termux/yinli_a/k/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/k/a/b",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Integer;",
            "La/d",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IILcom/termux/yinli_a/k/a/b;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "II",
            "La/k/a/b",
            "<-",
            "Ljava/lang/CharSequence;",
            "-",
            "Ljava/lang/Integer;",
            "La/d",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lcom/termux/yinli_a/k/b/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getNextMatch"

    invoke-static {p4, v0}, Lcom/termux/yinli_a/k/b/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/yinli_a/n/d;->a:Ljava/lang/CharSequence;

    iput p2, p0, Lcom/termux/yinli_a/n/d;->b:I

    iput p3, p0, Lcom/termux/yinli_a/n/d;->c:I

    iput-object p4, p0, Lcom/termux/yinli_a/n/d;->d:Lcom/termux/yinli_a/k/a/b;

    return-void
.end method

.method public static final synthetic a(Lcom/termux/yinli_a/n/d;)Lcom/termux/yinli_a/k/a/b;
    .registers 2

    iget-object v0, p0, Lcom/termux/yinli_a/n/d;->d:Lcom/termux/yinli_a/k/a/b;

    return-object v0
.end method

.method public static final synthetic b(Lcom/termux/yinli_a/n/d;)Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lcom/termux/yinli_a/n/d;->a:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static final synthetic c(Lcom/termux/yinli_a/n/d;)I
    .registers 2

    iget v0, p0, Lcom/termux/yinli_a/n/d;->c:I

    return v0
.end method

.method public static final synthetic d(Lcom/termux/yinli_a/n/d;)I
    .registers 2

    iget v0, p0, Lcom/termux/yinli_a/n/d;->b:I

    return v0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/termux/yinli_a/l/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/termux/yinli_a/n/d$a;

    invoke-direct {v0, p0}, Lcom/termux/yinli_a/n/d$a;-><init>(Lcom/termux/yinli_a/n/d;)V

    return-object v0
.end method
