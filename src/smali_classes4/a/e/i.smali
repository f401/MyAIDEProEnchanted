.class public La/e/i;
.super Ljava/lang/Object;

# interfaces
.implements La/e/j;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La/e/g;)Z
    .registers 3

    if-eqz p1, :cond_a

    invoke-interface {p1}, La/e/g;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
