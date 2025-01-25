.class public Lcom/a/b/c/a/b;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/a/b/c/a/b;->a:I

    iput-boolean v2, p0, Lcom/a/b/c/a/b;->b:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/b/c/a/b;->c:Z

    iput-boolean v2, p0, Lcom/a/b/c/a/b;->d:Z

    iput-object v1, p0, Lcom/a/b/c/a/b;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/a/b/c/a/b;->f:Ljava/lang/String;

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iput-object v0, p0, Lcom/a/b/c/a/b;->h:Ljava/io/PrintStream;

    return-void
.end method
