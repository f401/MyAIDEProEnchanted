.class final Labcd/nH$e;
.super Labcd/kF;

# interfaces
.implements Labcd/nH$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/nH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# instance fields
.field private final FH:Labcd/LG;


# direct methods
.method constructor <init>(Labcd/LG;Ljava/lang/String;Labcd/ME;)V
    .registers 4

    invoke-direct {p0, p2, p3}, Labcd/kF;-><init>(Ljava/lang/String;Labcd/ME;)V

    iput-object p1, p0, Labcd/nH$e;->FH:Labcd/LG;

    return-void
.end method


# virtual methods
.method public VH()Labcd/LG;
    .registers 2

    iget-object v0, p0, Labcd/nH$e;->FH:Labcd/LG;

    return-object v0
.end method

.method public j6(Labcd/BE;)Labcd/nH$c;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
