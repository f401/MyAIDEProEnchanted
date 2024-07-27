.class public Labcd/BE$a;
.super Labcd/BE;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/BE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Labcd/ME$a;Ljava/lang/String;Labcd/yE;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Labcd/BE;-><init>(Labcd/ME$a;Ljava/lang/String;Labcd/yE;)V

    return-void
.end method


# virtual methods
.method public FH()Labcd/yE;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public Hw()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
