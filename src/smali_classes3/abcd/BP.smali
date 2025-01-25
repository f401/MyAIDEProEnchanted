.class public Labcd/BP;
.super Labcd/CP;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/CP;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Labcd/CP;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
