.class public Labcd/TH$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/TH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/TH$c$a;
    }
.end annotation


# instance fields
.field DW:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Labcd/yE;",
            ">;"
        }
    .end annotation
.end field

.field EQ:J

.field FH:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Labcd/BH;",
            ">;"
        }
    .end annotation
.end field

.field Hw:I

.field J0:J

.field J8:J

.field QX:J

.field VH:J

.field Ws:J

.field XL:J

.field Zo:I

.field aM:[Labcd/TH$c$a;

.field gn:J

.field j6:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Labcd/yE;",
            ">;"
        }
    .end annotation
.end field

.field tp:J

.field u7:J

.field v5:I

.field we:J


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Labcd/TH$c$a;

    iput-object v0, p0, Labcd/TH$c;->aM:[Labcd/TH$c$a;

    iget-object v0, p0, Labcd/TH$c;->aM:[Labcd/TH$c$a;

    const/4 v1, 0x1

    new-instance v2, Labcd/TH$c$a;

    invoke-direct {v2}, Labcd/TH$c$a;-><init>()V

    aput-object v2, v0, v1

    iget-object v0, p0, Labcd/TH$c;->aM:[Labcd/TH$c$a;

    const/4 v1, 0x2

    new-instance v2, Labcd/TH$c$a;

    invoke-direct {v2}, Labcd/TH$c$a;-><init>()V

    aput-object v2, v0, v1

    iget-object v0, p0, Labcd/TH$c;->aM:[Labcd/TH$c$a;

    const/4 v1, 0x3

    new-instance v2, Labcd/TH$c$a;

    invoke-direct {v2}, Labcd/TH$c$a;-><init>()V

    aput-object v2, v0, v1

    iget-object v0, p0, Labcd/TH$c;->aM:[Labcd/TH$c$a;

    const/4 v1, 0x4

    new-instance v2, Labcd/TH$c$a;

    invoke-direct {v2}, Labcd/TH$c$a;-><init>()V

    aput-object v2, v0, v1

    return-void
.end method


# virtual methods
.method public DW()J
    .registers 3

    iget-wide v0, p0, Labcd/TH$c;->XL:J

    return-wide v0
.end method

.method public j6()Ljava/lang/String;
    .registers 7

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->packWriterStatistics:Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Labcd/TH$c;->VH:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Labcd/TH$c;->gn:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v4, p0, Labcd/TH$c;->u7:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-wide v4, p0, Labcd/TH$c;->tp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
