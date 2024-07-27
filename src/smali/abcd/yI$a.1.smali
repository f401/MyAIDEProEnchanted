.class public Labcd/yI$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/yI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field DW:Ljava/lang/String;

.field FH:I

.field Hw:Ljava/io/File;

.field VH:Ljava/lang/Boolean;

.field Zo:Ljava/lang/String;

.field gn:Ljava/lang/String;

.field j6:Z

.field v5:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Labcd/yI$a;->Hw:Ljava/io/File;

    return-object v0
.end method

.method public FH()I
    .registers 2

    iget v0, p0, Labcd/yI$a;->FH:I

    return v0
.end method

.method public Hw()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/yI$a;->Zo:Ljava/lang/String;

    return-object v0
.end method

.method public VH()Z
    .registers 2

    iget-object v0, p0, Labcd/yI$a;->VH:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Zo()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/yI$a;->v5:Ljava/lang/String;

    return-object v0
.end method

.method public j6()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/yI$a;->DW:Ljava/lang/String;

    return-object v0
.end method

.method j6(Labcd/yI$a;)V
    .registers 3

    iget-object v0, p0, Labcd/yI$a;->DW:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, Labcd/yI$a;->DW:Ljava/lang/String;

    iput-object v0, p0, Labcd/yI$a;->DW:Ljava/lang/String;

    :cond_0
    iget v0, p0, Labcd/yI$a;->FH:I

    if-nez v0, :cond_1

    iget v0, p1, Labcd/yI$a;->FH:I

    iput v0, p0, Labcd/yI$a;->FH:I

    :cond_1
    iget-object v0, p0, Labcd/yI$a;->Hw:Ljava/io/File;

    if-nez v0, :cond_2

    iget-object v0, p1, Labcd/yI$a;->Hw:Ljava/io/File;

    iput-object v0, p0, Labcd/yI$a;->Hw:Ljava/io/File;

    :cond_2
    iget-object v0, p0, Labcd/yI$a;->v5:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p1, Labcd/yI$a;->v5:Ljava/lang/String;

    iput-object v0, p0, Labcd/yI$a;->v5:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Labcd/yI$a;->Zo:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, p1, Labcd/yI$a;->Zo:Ljava/lang/String;

    iput-object v0, p0, Labcd/yI$a;->Zo:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Labcd/yI$a;->VH:Ljava/lang/Boolean;

    if-nez v0, :cond_5

    iget-object v0, p1, Labcd/yI$a;->VH:Ljava/lang/Boolean;

    iput-object v0, p0, Labcd/yI$a;->VH:Ljava/lang/Boolean;

    :cond_5
    iget-object v0, p0, Labcd/yI$a;->gn:Ljava/lang/String;

    if-nez v0, :cond_6

    iget-object v0, p1, Labcd/yI$a;->gn:Ljava/lang/String;

    iput-object v0, p0, Labcd/yI$a;->gn:Ljava/lang/String;

    :cond_6
    return-void
.end method

.method public v5()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/yI$a;->gn:Ljava/lang/String;

    return-object v0
.end method
