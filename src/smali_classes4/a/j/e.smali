.class public La/j/e;
.super La/j/t;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, La/j/t;-><init>()V

    iput-boolean p1, p0, La/j/e;->a:Z

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;II)Z
    .registers 5

    iget-boolean v0, p0, La/j/e;->a:Z

    return v0
.end method
