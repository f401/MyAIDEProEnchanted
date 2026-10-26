.class public final Lcom/a/b/c/b/a/aa;
.super Lcom/a/b/c/b/r;


# static fields
.field public static final a:Lcom/a/b/c/b/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/a/b/c/b/a/aa;

    invoke-direct {v0}, Lcom/a/b/c/b/a/aa;-><init>()V

    sput-object v0, Lcom/a/b/c/b/a/aa;->a:Lcom/a/b/c/b/r;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/a/b/c/b/r;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/a/b/c/b/l;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/a/b/g/a;Lcom/a/b/c/b/l;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Lcom/a/b/c/b/l;Z)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Lcom/a/b/c/b/l;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
