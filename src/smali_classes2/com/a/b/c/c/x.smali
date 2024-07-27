.class public abstract Lcom/a/b/c/c/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/g/w;


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/a/b/c/c/x;->a:I

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/a/b/c/c/t;Lcom/a/b/g/a;II)I
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lcom/a/b/c/c/x;->a:I

    return v0
.end method
