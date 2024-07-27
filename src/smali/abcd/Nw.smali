.class public Labcd/Nw;
.super Labcd/Kw;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "Proxy may have been updated, try request again."

    invoke-direct {p0, v0}, Labcd/Kw;-><init>(Ljava/lang/String;)V

    return-void
.end method
