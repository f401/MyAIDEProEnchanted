.class public Labcd/WH;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Ljava/lang/String;

.field private final FH:Labcd/yE;

.field private final Hw:Labcd/yE;

.field private final j6:Labcd/XH;


# direct methods
.method public constructor <init>(Labcd/XH;Ljava/lang/String;Labcd/yE;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Labcd/WH;-><init>(Labcd/XH;Ljava/lang/String;Labcd/yE;Labcd/yE;)V

    return-void
.end method

.method public constructor <init>(Labcd/XH;Ljava/lang/String;Labcd/yE;Labcd/yE;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/WH;->j6:Labcd/XH;

    iput-object p2, p0, Labcd/WH;->DW:Ljava/lang/String;

    iput-object p3, p0, Labcd/WH;->FH:Labcd/yE;

    iput-object p4, p0, Labcd/WH;->Hw:Labcd/yE;

    return-void
.end method


# virtual methods
.method public j6()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/WH;->DW:Ljava/lang/String;

    return-object v0
.end method
