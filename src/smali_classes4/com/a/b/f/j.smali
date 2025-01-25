.class final Lcom/a/b/f/j;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Lcom/a/b/f/aj;

.field public c:Lcom/a/b/f/aj;

.field public d:Lcom/a/b/f/aj;

.field public e:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/b/f/j;->e:Ljava/util/ArrayList;

    return-void
.end method
