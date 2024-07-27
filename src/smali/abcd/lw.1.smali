.class public Labcd/lw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appfour/backbone/api/define/DefineOccurrences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/lw$a;
    }
.end annotation


# instance fields
.field private DW:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Labcd/lw$a;",
            ">;"
        }
    .end annotation
.end field

.field private FH:Z

.field private Hw:Z

.field private VH:Z

.field private Zo:Z

.field private gn:Z

.field private j6:Ljava/lang/String;

.field private v5:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/lw;->DW:Ljava/util/List;

    iput-object p1, p0, Labcd/lw;->j6:Ljava/lang/String;

    return-void
.end method

.method private Hw()Labcd/lw$a;
    .registers 3

    new-instance v0, Labcd/lw$a;

    invoke-direct {v0, p0}, Labcd/lw$a;-><init>(Labcd/lw;)V

    iget-object v1, p0, Labcd/lw;->DW:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private j6(Z)I
    .registers 3

    iget-boolean v0, p0, Labcd/lw;->FH:Z

    if-eqz v0, :cond_0

    sget v0, Labcd/pw;->j6:I

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Labcd/lw;->Hw:Z

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Labcd/pw;->j6(Labcd/lw;Z)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Labcd/lw;->v5:Z

    if-eqz v0, :cond_2

    invoke-static {p0, p1}, Labcd/pw;->DW(Labcd/lw;Z)I

    move-result v0

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Labcd/lw;->Zo:Z

    if-eqz v0, :cond_3

    invoke-static {p0, p1}, Labcd/pw;->FH(Labcd/lw;Z)I

    move-result v0

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Labcd/lw;->VH:Z

    if-eqz v0, :cond_4

    invoke-static {p0, p1}, Labcd/pw;->v5(Labcd/lw;Z)I

    move-result v0

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Labcd/lw;->gn:Z

    if-eqz v0, :cond_5

    invoke-static {p0, p1}, Labcd/pw;->Hw(Labcd/lw;Z)I

    move-result v0

    goto :goto_0

    :cond_5
    sget v0, Labcd/pw;->j6:I

    goto :goto_0
.end method

.method static synthetic j6(Labcd/lw;)Labcd/lw$a;
    .registers 2

    invoke-direct {p0}, Labcd/lw;->Hw()Labcd/lw$a;

    move-result-object v0

    return-object v0
.end method

.method private j6(JLcom/appfour/backbone/api/objects/EventData;)V
    .registers 7

    iget-boolean v0, p0, Labcd/lw;->FH:Z

    if-eqz v0, :cond_1

    invoke-static {p0, p1, p2, p3}, Labcd/iw;->j6(Labcd/lw;JLcom/appfour/backbone/api/objects/EventData;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Labcd/lw;->j6(Z)I

    move-result v0

    sget v1, Labcd/pw;->DW:I

    if-eq v0, v1, :cond_0

    invoke-static {p0, p1, p2, p3}, Labcd/iw;->j6(Labcd/lw;JLcom/appfour/backbone/api/objects/EventData;)V

    invoke-virtual {p0}, Labcd/lw;->j6()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Labcd/kv;->DW(Ljava/util/List;)V

    goto :goto_0
.end method

.method static synthetic j6(Labcd/lw;JLcom/appfour/backbone/api/objects/EventData;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Labcd/lw;->j6(JLcom/appfour/backbone/api/objects/EventData;)V

    return-void
.end method


# virtual methods
.method public DW()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/lw;->j6:Ljava/lang/String;

    return-object v0
.end method

.method public FH()Z
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Labcd/lw;->j6(Z)I

    move-result v1

    sget v2, Labcd/pw;->j6:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public asEachOccurrenceOf()Lcom/appfour/backbone/api/define/DefineHook;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/lw;->FH:Z

    invoke-direct {p0}, Labcd/lw;->Hw()Labcd/lw$a;

    move-result-object v0

    return-object v0
.end method

.method public asFirstOccurrenceOf()Lcom/appfour/backbone/api/define/DefineHook;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/lw;->Hw:Z

    invoke-direct {p0}, Labcd/lw;->Hw()Labcd/lw$a;

    move-result-object v0

    return-object v0
.end method

.method public asFirstOccurrencePerAppVersionOf()Lcom/appfour/backbone/api/define/DefineHook;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/lw;->v5:Z

    invoke-direct {p0}, Labcd/lw;->Hw()Labcd/lw$a;

    move-result-object v0

    return-object v0
.end method

.method public asFirstOccurrencePerDayOf()Lcom/appfour/backbone/api/define/DefineHook;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/lw;->Zo:Z

    invoke-direct {p0}, Labcd/lw;->Hw()Labcd/lw$a;

    move-result-object v0

    return-object v0
.end method

.method public asFirstOccurrencePerMonthOf()Lcom/appfour/backbone/api/define/DefineHook;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/lw;->gn:Z

    invoke-direct {p0}, Labcd/lw;->Hw()Labcd/lw$a;

    move-result-object v0

    return-object v0
.end method

.method public asFirstOccurrencePerWeekOf()Lcom/appfour/backbone/api/define/DefineHook;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/lw;->VH:Z

    invoke-direct {p0}, Labcd/lw;->Hw()Labcd/lw$a;

    move-result-object v0

    return-object v0
.end method

.method public j6()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Labcd/lw$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/lw;->DW:Ljava/util/List;

    return-object v0
.end method
