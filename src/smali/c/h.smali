.class public final Lc/h;
.super Ljava/io/IOException;
.source "SourceFile"


# instance fields
.field public final a:I

.field public b:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lc/h;->a:I

    .line 1
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;I)V
    .registers 4

    .line 2
    iput p3, p0, Lc/h;->a:I

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lc/h;->b:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final getCause()Ljava/lang/Throwable;
    .registers 2

    iget v0, p0, Lc/h;->a:I

    if-eqz v0, :cond_7

    .line 2
    iget-object v0, p0, Lc/h;->b:Ljava/lang/Throwable;

    return-object v0

    .line 1
    :cond_7
    iget-object v0, p0, Lc/h;->b:Ljava/lang/Throwable;

    return-object v0
.end method
