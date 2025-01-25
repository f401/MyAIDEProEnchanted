.class Lcom/a/b/f/ad;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/a/b/e/b/u;

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(Lcom/a/b/e/b/u;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/b/f/ad;->a:Lcom/a/b/e/b/u;

    iput p2, p0, Lcom/a/b/f/ad;->b:I

    iput p3, p0, Lcom/a/b/f/ad;->c:I

    return-void
.end method
