.class public Lcom/aide/engine/EngineSolutionProject;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/aide/engine/EngineSolutionProject;",
            ">;"
        }
    .end annotation
.end field

.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field final EQ:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x6eb43588dab8aa80L
    .end annotation
.end field

.field public final FH:Ljava/lang/String;

.field final Hw:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x89bed8616b9a180L
    .end annotation
.end field

.field final J0:Z
    .annotation runtime Labcd/ru;
        field = -0x4821a227dc910268L
    .end annotation
.end field

.field final J8:Z
    .annotation runtime Labcd/ru;
        field = -0x1e567431b3242b9L
    .end annotation
.end field

.field final Mr:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = 0xccc8765527252d7L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final QX:Z
    .annotation runtime Labcd/ru;
        field = 0x4acd80ea54c513f4L
    .end annotation
.end field

.field final VH:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = -0x2af86b16bfefb787L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final Ws:Z
    .annotation runtime Labcd/ru;
        field = -0x3325b6c8e7008a3dL
    .end annotation
.end field

.field final XL:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x3414e0c3ba336a47L
    .end annotation
.end field

.field final Zo:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = 0xe813484364328d4L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aide/engine/EngineSolution$File;",
            ">;"
        }
    .end annotation
.end field

.field final aM:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = -0x1e52d46c90d8ca17L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final gn:Z
    .annotation runtime Labcd/ru;
        field = -0x29e71aca1202e411L
    .end annotation
.end field

.field final j3:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = -0x46a68b43151d0d50L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final tp:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x39fbade2c57e83e0L
    .end annotation
.end field

.field final u7:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x29a3ad27e6940a60L
    .end annotation
.end field

.field final v5:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x3278c36a6480dc51L
    .end annotation
.end field

.field final we:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x47f7eb33f1a3c041L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x1b2fe44ad075e800L
    .end annotation

    const-wide v8, 0x292ae3413d53115dL    # 2.236070456369311E-110

    const/4 v6, 0x0

    :try_start_0
    const-class v0, Lcom/aide/engine/EngineSolutionProject;

    const-wide v2, 0x56da63bdfdac780L

    const-wide v4, 0x56da63bdfdac780L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Lcom/aide/engine/EngineSolutionProject;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x292ae3413d53115dL    # 2.236070456369311E-110

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/engine/g;

    invoke-direct {v0}, Lcom/aide/engine/g;-><init>()V

    sput-object v0, Lcom/aide/engine/EngineSolutionProject;->CREATOR:Landroid/os/Parcelable$Creator;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/EngineSolutionProject;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v8, v9, v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 10

    const-wide v6, 0x5038bc5097a0b491L    # 2.8641873514907307E78

    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v2, Lcom/aide/engine/EngineSolutionProject;->j6:Z

    if-eqz v2, :cond_0

    const-wide v2, 0x5038bc5097a0b491L    # 2.8641873514907307E78

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/aide/engine/EngineSolutionProject;->FH:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/aide/engine/EngineSolutionProject;->Hw:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/aide/engine/EngineSolutionProject;->v5:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/aide/engine/EngineSolutionProject;->gn:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/aide/engine/EngineSolutionProject;->u7:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/aide/engine/EngineSolutionProject;->tp:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/aide/engine/EngineSolutionProject;->EQ:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/aide/engine/EngineSolutionProject;->we:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    :goto_1
    iput-boolean v2, p0, Lcom/aide/engine/EngineSolutionProject;->J0:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v0

    :goto_2
    iput-boolean v2, p0, Lcom/aide/engine/EngineSolutionProject;->J8:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    move v2, v0

    :goto_3
    iput-boolean v2, p0, Lcom/aide/engine/EngineSolutionProject;->Ws:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    :goto_4
    iput-boolean v0, p0, Lcom/aide/engine/EngineSolutionProject;->QX:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/engine/EngineSolutionProject;->XL:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aide/engine/EngineSolutionProject;->VH:Ljava/util/List;

    iget-object v0, p0, Lcom/aide/engine/EngineSolutionProject;->VH:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aide/engine/EngineSolutionProject;->aM:Ljava/util/List;

    iget-object v0, p0, Lcom/aide/engine/EngineSolutionProject;->aM:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aide/engine/EngineSolutionProject;->j3:Ljava/util/List;

    iget-object v0, p0, Lcom/aide/engine/EngineSolutionProject;->j3:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aide/engine/EngineSolutionProject;->Mr:Ljava/util/List;

    iget-object v0, p0, Lcom/aide/engine/EngineSolutionProject;->Mr:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aide/engine/EngineSolutionProject;->Zo:Ljava/util/List;

    iget-object v0, p0, Lcom/aide/engine/EngineSolutionProject;->Zo:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_1
    move v2, v1

    goto/16 :goto_0

    :cond_2
    move v2, v1

    goto/16 :goto_1

    :cond_3
    move v2, v1

    goto/16 :goto_2

    :cond_4
    move v2, v1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_4

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/EngineSolutionProject;->DW:Z

    if-eqz v1, :cond_6

    invoke-static {v0, v6, v7, v5, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/aide/engine/EngineSolution$File;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZ",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-boolean v2, Lcom/aide/engine/EngineSolutionProject;->j6:Z

    if-eqz v2, :cond_0

    const-wide v2, 0x2f347a9ce1fe12f8L    # 2.698665142758856E-81

    const/4 v4, 0x0

    const/16 v5, 0x12

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

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

    aput-object p7, v5, v6

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

    const/16 v6, 0xb

    new-instance v7, Ljava/lang/Boolean;

    move/from16 v0, p12

    invoke-direct {v7, v0}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v7, v5, v6

    const/16 v6, 0xc

    new-instance v7, Ljava/lang/Boolean;

    move/from16 v0, p13

    invoke-direct {v7, v0}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v7, v5, v6

    const/16 v6, 0xd

    new-instance v7, Ljava/lang/Boolean;

    move/from16 v0, p14

    invoke-direct {v7, v0}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v7, v5, v6

    const/16 v6, 0xe

    aput-object p15, v5, v6

    const/16 v6, 0xf

    aput-object p16, v5, v6

    const/16 v6, 0x10

    aput-object p17, v5, v6

    const/16 v6, 0x11

    aput-object p18, v5, v6

    invoke-static {v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/engine/EngineSolutionProject;->FH:Ljava/lang/String;

    iput-object p2, p0, Lcom/aide/engine/EngineSolutionProject;->Hw:Ljava/lang/String;

    iput-object p3, p0, Lcom/aide/engine/EngineSolutionProject;->v5:Ljava/lang/String;

    iput-object p4, p0, Lcom/aide/engine/EngineSolutionProject;->Zo:Ljava/util/List;

    iput-object p5, p0, Lcom/aide/engine/EngineSolutionProject;->VH:Ljava/util/List;

    iput-boolean p6, p0, Lcom/aide/engine/EngineSolutionProject;->gn:Z

    iput-object p7, p0, Lcom/aide/engine/EngineSolutionProject;->u7:Ljava/lang/String;

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/aide/engine/EngineSolutionProject;->tp:Ljava/lang/String;

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/aide/engine/EngineSolutionProject;->EQ:Ljava/lang/String;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/aide/engine/EngineSolutionProject;->we:Ljava/lang/String;

    move/from16 v0, p11

    iput-boolean v0, p0, Lcom/aide/engine/EngineSolutionProject;->J0:Z

    move/from16 v0, p12

    iput-boolean v0, p0, Lcom/aide/engine/EngineSolutionProject;->J8:Z

    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/aide/engine/EngineSolutionProject;->Ws:Z

    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/aide/engine/EngineSolutionProject;->QX:Z

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/aide/engine/EngineSolutionProject;->XL:Ljava/lang/String;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/aide/engine/EngineSolutionProject;->aM:Ljava/util/List;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/aide/engine/EngineSolutionProject;->j3:Ljava/util/List;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/aide/engine/EngineSolutionProject;->Mr:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 5

    const-wide v2, -0x366cd41928f4554cL    # -2.73624664227927E46

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/EngineSolutionProject;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x366cd41928f4554cL    # -2.73624664227927E46

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/EngineSolutionProject;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 11

    const-wide v2, -0x2220c59ace5ee757L    # -1.5232233827288893E144

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v4, Lcom/aide/engine/EngineSolutionProject;->j6:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v6, -0x2220c59ace5ee757L    # -1.5232233827288893E144

    invoke-static {v6, v7, p0, p1, v4}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v4, p0, Lcom/aide/engine/EngineSolutionProject;->FH:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/aide/engine/EngineSolutionProject;->Hw:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/aide/engine/EngineSolutionProject;->v5:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/aide/engine/EngineSolutionProject;->gn:Z

    if-eqz v4, :cond_1

    move v4, v0

    :goto_0
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Lcom/aide/engine/EngineSolutionProject;->u7:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/aide/engine/EngineSolutionProject;->tp:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/aide/engine/EngineSolutionProject;->EQ:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/aide/engine/EngineSolutionProject;->we:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/aide/engine/EngineSolutionProject;->J0:Z

    if-eqz v4, :cond_2

    move v4, v0

    :goto_1
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v4, p0, Lcom/aide/engine/EngineSolutionProject;->J8:Z

    if-eqz v4, :cond_3

    move v4, v0

    :goto_2
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v4, p0, Lcom/aide/engine/EngineSolutionProject;->Ws:Z

    if-eqz v4, :cond_4

    move v4, v0

    :goto_3
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v4, p0, Lcom/aide/engine/EngineSolutionProject;->QX:Z

    if-eqz v4, :cond_5

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/aide/engine/EngineSolutionProject;->XL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aide/engine/EngineSolutionProject;->VH:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/aide/engine/EngineSolutionProject;->aM:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/aide/engine/EngineSolutionProject;->j3:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/aide/engine/EngineSolutionProject;->Mr:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/aide/engine/EngineSolutionProject;->Zo:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_1
    move v4, v1

    goto :goto_0

    :cond_2
    move v4, v1

    goto :goto_1

    :cond_3
    move v4, v1

    goto :goto_2

    :cond_4
    move v4, v1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_4

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/EngineSolutionProject;->DW:Z

    if-eqz v0, :cond_6

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    throw v1
.end method
