.class public Labcd/YO;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/qO;


# instance fields
.field private DW:[B

.field private j6:Labcd/qO;


# direct methods
.method public constructor <init>(Labcd/qO;[B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/YO;->j6:Labcd/qO;

    iput-object p2, p0, Labcd/YO;->DW:[B

    return-void
.end method


# virtual methods
.method public DW()[B
    .registers 2

    iget-object v0, p0, Labcd/YO;->DW:[B

    return-object v0
.end method

.method public j6()Labcd/qO;
    .registers 2

    iget-object v0, p0, Labcd/YO;->j6:Labcd/qO;

    return-object v0
.end method
