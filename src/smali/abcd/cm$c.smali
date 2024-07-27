.class public Labcd/cm$c;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/cm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field public DW:Ljava/lang/String;

.field public FH:Ljava/lang/String;

.field public Hw:Ljava/lang/String;

.field public VH:Ljava/lang/String;

.field public Zo:Labcd/cm$a;

.field public gn:Ljava/lang/String;

.field public v5:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x18e57f1938fce4cbL    # -4.612760256585863E188

    const-class v0, Labcd/cm$c;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLabcd/cm$a;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    sget-boolean v0, Labcd/cm$c;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xec6d15bebf16230L

    const/4 v2, 0x0

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p4, p5}, Ljava/lang/Long;-><init>(J)V

    aput-object v5, v3, v4

    const/4 v4, 0x4

    aput-object p6, v3, v4

    const/4 v4, 0x5

    aput-object p7, v3, v4

    const/4 v4, 0x6

    aput-object p8, v3, v4

    invoke-static {v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/cm$c;->DW:Ljava/lang/String;

    iput-object p2, p0, Labcd/cm$c;->FH:Ljava/lang/String;

    iput-object p3, p0, Labcd/cm$c;->Hw:Ljava/lang/String;

    iput-wide p4, p0, Labcd/cm$c;->v5:J

    iput-object p6, p0, Labcd/cm$c;->Zo:Labcd/cm$a;

    iput-object p7, p0, Labcd/cm$c;->VH:Ljava/lang/String;

    iput-object p8, p0, Labcd/cm$c;->gn:Ljava/lang/String;

    return-void
.end method
