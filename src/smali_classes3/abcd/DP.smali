.class public Labcd/DP;
.super Ljava/io/IOException;


# instance fields
.field private j6:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Labcd/DP;->j6:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .registers 2

    iget-object v0, p0, Labcd/DP;->j6:Ljava/lang/Throwable;

    return-object v0
.end method
