.class public Labcd/OI;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/OI$a;,
        Labcd/OI$b;
    }
.end annotation


# instance fields
.field private final DW:Labcd/yE;

.field private final FH:Ljava/lang/String;

.field private Hw:Labcd/OI$b;

.field private VH:Ljava/lang/String;

.field private Zo:Labcd/OI$a;

.field private final j6:Labcd/yE;

.field private v5:Labcd/ME;


# direct methods
.method public constructor <init>(Labcd/yE;Labcd/yE;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/OI;->j6:Labcd/yE;

    iput-object p2, p0, Labcd/OI;->DW:Labcd/yE;

    iput-object p3, p0, Labcd/OI;->FH:Ljava/lang/String;

    sget-object p3, Labcd/OI$b;->DW:Labcd/OI$b;

    iput-object p3, p0, Labcd/OI;->Hw:Labcd/OI$b;

    invoke-static {}, Labcd/yE;->Ws()Labcd/yE;

    move-result-object p3

    invoke-virtual {p3, p1}, Labcd/YD;->DW(Labcd/YD;)Z

    move-result p1

    if-eqz p1, :cond_1b

    sget-object p1, Labcd/OI$b;->j6:Labcd/OI$b;

    iput-object p1, p0, Labcd/OI;->Hw:Labcd/OI$b;

    :cond_1b
    invoke-static {}, Labcd/yE;->Ws()Labcd/yE;

    move-result-object p1

    invoke-virtual {p1, p2}, Labcd/YD;->DW(Labcd/YD;)Z

    move-result p1

    if-eqz p1, :cond_29

    sget-object p1, Labcd/OI$b;->Hw:Labcd/OI$b;

    iput-object p1, p0, Labcd/OI;->Hw:Labcd/OI$b;

    :cond_29
    sget-object p1, Labcd/OI$a;->j6:Labcd/OI$a;

    iput-object p1, p0, Labcd/OI;->Zo:Labcd/OI$a;

    return-void
.end method


# virtual methods
.method public DW()Labcd/yE;
    .registers 2

    iget-object v0, p0, Labcd/OI;->DW:Labcd/yE;

    return-object v0
.end method

.method public FH()Labcd/yE;
    .registers 2

    iget-object v0, p0, Labcd/OI;->j6:Labcd/yE;

    return-object v0
.end method

.method public Hw()Labcd/ME;
    .registers 2

    iget-object v0, p0, Labcd/OI;->v5:Labcd/ME;

    return-object v0
.end method

.method public VH()Labcd/OI$b;
    .registers 2

    iget-object v0, p0, Labcd/OI;->Hw:Labcd/OI$b;

    return-object v0
.end method

.method public Zo()Labcd/OI$a;
    .registers 2

    iget-object v0, p0, Labcd/OI;->Zo:Labcd/OI$a;

    return-object v0
.end method

.method public j6()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/OI;->VH:Ljava/lang/String;

    return-object v0
.end method

.method j6(Labcd/ME;)V
    .registers 2

    iput-object p1, p0, Labcd/OI;->v5:Labcd/ME;

    return-void
.end method

.method public j6(Labcd/OI$a;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Labcd/OI;->j6(Labcd/OI$a;Ljava/lang/String;)V

    return-void
.end method

.method public j6(Labcd/OI$a;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Labcd/OI;->Zo:Labcd/OI$a;

    iput-object p2, p0, Labcd/OI;->VH:Ljava/lang/String;

    return-void
.end method

.method j6(Labcd/OI$b;)V
    .registers 2

    iput-object p1, p0, Labcd/OI;->Hw:Labcd/OI$b;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/OI;->VH()Labcd/OI$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/OI;->FH()Labcd/yE;

    move-result-object v1

    invoke-virtual {v1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/OI;->DW()Labcd/yE;

    move-result-object v2

    invoke-virtual {v2}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/OI;->v5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v5()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/OI;->FH:Ljava/lang/String;

    return-object v0
.end method
