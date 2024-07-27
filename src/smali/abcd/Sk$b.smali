.class public Labcd/Sk$b;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Sk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field public DW:Labcd/Ui;

.field public EQ:I

.field public FH:Ljava/lang/String;

.field public Hw:Ljava/lang/String;

.field public VH:Z

.field public Zo:Ljava/lang/String;

.field public gn:Z

.field public tp:Z

.field public u7:Ljava/lang/String;

.field public v5:Ljava/lang/String;

.field public we:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0xba4b609eeb08bfL

    const-class v0, Labcd/Sk$b;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/Ui;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 20

    sget-boolean v2, Labcd/Sk$b;->j6:Z

    if-eqz v2, :cond_0

    const-wide v2, 0x75cf169914e5dccL

    const/4 v4, 0x0

    const/16 v5, 0xb

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    const/4 v6, 0x3

    aput-object p4, v5, v6

    const/4 v6, 0x4

    aput-object p5, v5, v6

    const/4 v6, 0x5

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p6}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v7, v5, v6

    const/4 v6, 0x6

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p7}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v7, v5, v6

    const/4 v6, 0x7

    aput-object p8, v5, v6

    const/16 v6, 0x8

    aput-object p9, v5, v6

    const/16 v6, 0x9

    aput-object p10, v5, v6

    const/16 v6, 0xa

    new-instance v7, Ljava/lang/Boolean;

    move/from16 v0, p11

    invoke-direct {v7, v0}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Sk$b;->DW:Labcd/Ui;

    iput-object p5, p0, Labcd/Sk$b;->Zo:Ljava/lang/String;

    iput-object p3, p0, Labcd/Sk$b;->v5:Ljava/lang/String;

    iput-object p4, p0, Labcd/Sk$b;->FH:Ljava/lang/String;

    move-object/from16 v0, p8

    iput-object v0, p0, Labcd/Sk$b;->Hw:Ljava/lang/String;

    iput-boolean p6, p0, Labcd/Sk$b;->VH:Z

    iput-boolean p7, p0, Labcd/Sk$b;->gn:Z

    move-object/from16 v0, p9

    iput-object v0, p0, Labcd/Sk$b;->u7:Ljava/lang/String;

    move/from16 v0, p11

    iput-boolean v0, p0, Labcd/Sk$b;->tp:Z

    iput p2, p0, Labcd/Sk$b;->EQ:I

    move-object/from16 v0, p10

    iput-object v0, p0, Labcd/Sk$b;->we:Ljava/lang/String;

    return-void
.end method
