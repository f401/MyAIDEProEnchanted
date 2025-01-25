.class public La/g/b/r;
.super Ljava/lang/Object;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, La/g/b/r;->a:Z

    return-void
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, La/g/b/r;->a:Z

    return-void
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, La/g/b/r;->a:Z

    return v0
.end method
