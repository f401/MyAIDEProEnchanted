.class public Labcd/GP;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/AP;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/GP$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Labcd/wN;)Labcd/zP;
    .registers 5

    new-instance v0, Labcd/FP;

    new-instance v1, Labcd/GP$a;

    invoke-static {p1}, Labcd/HP;->j6(Labcd/wN;)Labcd/sO;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Labcd/GP$a;-><init>(Labcd/GP;Labcd/sO;)V

    invoke-direct {v0, p0, p1, v1}, Labcd/FP;-><init>(Labcd/GP;Labcd/wN;Labcd/GP$a;)V

    return-object v0
.end method
