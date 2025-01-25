.class public final Lcom/a/b/c/c/ad;
.super Lcom/a/b/c/c/bg;


# instance fields
.field private final a:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/a/b/c/c/t;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-direct {p0, v0, p1, v1}, Lcom/a/b/c/c/bg;-><init>(Ljava/lang/String;Lcom/a/b/c/c/t;I)V

    new-instance v0, Lcom/a/b/c/c/ac;

    invoke-direct {v0}, Lcom/a/b/c/c/ac;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/a/b/c/c/ac;->a(I)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/c/c/ad;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 1

    return-void
.end method

.method public b()Ljava/util/Collection;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/c/ad;->a:Ljava/util/List;

    return-object v0
.end method
