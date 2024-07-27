.class public Lcom/a/b/g/f;
.super Ljava/io/DataInputStream;


# instance fields
.field private final a:Lcom/a/b/g/g;


# direct methods
.method public constructor <init>(Lcom/a/b/g/g;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lcom/a/b/g/f;->a:Lcom/a/b/g/g;

    return-void
.end method
