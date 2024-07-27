.class public abstract Lcom/a/b/a/a/u;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/a/e/a;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/a/b/a/a/u;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/a/u;->a:Ljava/lang/String;

    return-object v0
.end method
