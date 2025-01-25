.class public Labcd/KN;
.super Ljava/lang/Object;


# instance fields
.field private DW:Ljava/util/Vector;

.field private j6:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Labcd/KN;->j6:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Labcd/KN;->DW:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public DW()Z
    .registers 2

    iget-object v0, p0, Labcd/KN;->DW:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public j6()Labcd/JN;
    .registers 4

    new-instance v0, Labcd/JN;

    iget-object v1, p0, Labcd/KN;->DW:Ljava/util/Vector;

    iget-object v2, p0, Labcd/KN;->j6:Ljava/util/Hashtable;

    invoke-direct {v0, v1, v2}, Labcd/JN;-><init>(Ljava/util/Vector;Ljava/util/Hashtable;)V

    return-object v0
.end method
