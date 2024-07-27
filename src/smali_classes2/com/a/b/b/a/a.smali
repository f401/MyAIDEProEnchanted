.class public Lcom/a/b/b/a/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/a/b/b/a/a;


# instance fields
.field public final b:Lcom/a/b/c/a/e;

.field public final c:Lcom/a/b/c/a/f;

.field public final d:Ljava/io/PrintStream;

.field public final e:Ljava/io/PrintStream;

.field final f:Ljava/io/PrintStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/a/b/b/a/a;

    invoke-direct {v0}, Lcom/a/b/b/a/a;-><init>()V

    sput-object v0, Lcom/a/b/b/a/a;->a:Lcom/a/b/b/a/a;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {p0, v0, v1}, Lcom/a/b/b/a/a;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/a/b/c/a/e;

    invoke-direct {v0}, Lcom/a/b/c/a/e;-><init>()V

    iput-object v0, p0, Lcom/a/b/b/a/a;->b:Lcom/a/b/c/a/e;

    new-instance v0, Lcom/a/b/c/a/f;

    invoke-direct {v0}, Lcom/a/b/c/a/f;-><init>()V

    iput-object v0, p0, Lcom/a/b/b/a/a;->c:Lcom/a/b/c/a/f;

    new-instance v0, Ljava/io/PrintStream;

    new-instance v1, Lcom/a/b/b/a/b;

    invoke-direct {v1, p0}, Lcom/a/b/b/a/b;-><init>(Lcom/a/b/b/a/a;)V

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/a/b/b/a/a;->f:Ljava/io/PrintStream;

    new-instance v0, Ljava/io/PrintStream;

    invoke-direct {v0, p1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/a/b/b/a/a;->d:Ljava/io/PrintStream;

    new-instance v0, Ljava/io/PrintStream;

    invoke-direct {v0, p2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/a/b/b/a/a;->e:Ljava/io/PrintStream;

    return-void
.end method
