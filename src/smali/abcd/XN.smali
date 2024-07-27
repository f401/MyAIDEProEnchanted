.class public Labcd/XN;
.super Ljava/lang/Exception;


# instance fields
.field j6:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Labcd/XN;->j6:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .registers 2

    iget-object v0, p0, Labcd/XN;->j6:Ljava/lang/Exception;

    return-object v0
.end method
