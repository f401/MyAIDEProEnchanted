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
            "Landroid/os/Parcelable$Creator<",
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
            "Ljava/util/List<",
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
            "Ljava/util/List<",
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
            "Ljava/util/List<",
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
            "Ljava/util/List<",
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
            "Ljava/util/List<",
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
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1b2fe44ad075e800L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x292ae3413d53115dL  # 2.236070456369311E-110

    :try_start_6
    const-class v3, Lcom/aide/engine/EngineSolutionProject;

    const-wide v4, 0x56da63bdfdac780L

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Lcom/aide/engine/EngineSolutionProject;->j6:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    new-instance v3, Lcom/aide/engine/g;

    invoke-direct {v3}, Lcom/aide/engine/g;-><init>()V

    sput-object v3, Lcom/aide/engine/EngineSolutionProject;->CREATOR:Landroid/os/Parcelable$Creator;
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v3

    sget-boolean v4, Lcom/aide/engine/EngineSolutionProject;->DW:Z

    if-eqz v4, :cond_27

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_27
    throw v3
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 8

    const/4 v0, 0x0

    const-wide v1, 0x5038bc5097a0b491L  # 2.8641873514907307E78

    :try_start_6
    sget-boolean v3, Lcom/aide/engine/EngineSolutionProject;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/aide/engine/EngineSolutionProject;->FH:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/aide/engine/EngineSolutionProject;->Hw:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/aide/engine/EngineSolutionProject;->v5:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2c

    const/4 v3, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v3, 0x0

    :goto_2d
    iput-boolean v3, p0, Lcom/aide/engine/EngineSolutionProject;->gn:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/aide/engine/EngineSolutionProject;->u7:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/aide/engine/EngineSolutionProject;->tp:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/aide/engine/EngineSolutionProject;->EQ:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/aide/engine/EngineSolutionProject;->we:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4f

    const/4 v3, 0x1

    goto :goto_50

    :cond_4f
    const/4 v3, 0x0

    :goto_50
    iput-boolean v3, p0, Lcom/aide/engine/EngineSolutionProject;->J0:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5a

    const/4 v3, 0x1

    goto :goto_5b

    :cond_5a
    const/4 v3, 0x0

    :goto_5b
    iput-boolean v3, p0, Lcom/aide/engine/EngineSolutionProject;->J8:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_65

    const/4 v3, 0x1

    goto :goto_66

    :cond_65
    const/4 v3, 0x0

    :goto_66
    iput-boolean v3, p0, Lcom/aide/engine/EngineSolutionProject;->Ws:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6f

    const/4 v4, 0x1

    :cond_6f
    iput-boolean v4, p0, Lcom/aide/engine/EngineSolutionProject;->QX:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/aide/engine/EngineSolutionProject;->XL:Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/aide/engine/EngineSolutionProject;->VH:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/aide/engine/EngineSolutionProject;->aM:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/aide/engine/EngineSolutionProject;->j3:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/aide/engine/EngineSolutionProject;->Mr:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/aide/engine/EngineSolutionProject;->Zo:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V
    :try_end_d1
    .catchall {:try_start_6 .. :try_end_d1} :catchall_d2

    return-void

    :catchall_d2
    move-exception v3

    sget-boolean v4, Lcom/aide/engine/EngineSolutionProject;->DW:Z

    if-eqz v4, :cond_da

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_da
    throw v3
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/aide/engine/EngineSolution$File;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v0, p16

    sget-boolean v16, Lcom/aide/engine/EngineSolutionProject;->j6:Z

    if-eqz v16, :cond_96

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v1, v0, v16

    const/16 v16, 0x1

    aput-object v2, v0, v16

    const/16 v16, 0x2

    aput-object v3, v0, v16

    const/16 v16, 0x3

    aput-object v4, v0, v16

    const/16 v16, 0x4

    aput-object v5, v0, v16

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, v6}, Ljava/lang/Boolean;-><init>(Z)V

    const/16 v16, 0x5

    aput-object v5, v0, v16

    const/4 v5, 0x6

    aput-object v7, v0, v5

    const/4 v5, 0x7

    aput-object v8, v0, v5

    const/16 v5, 0x8

    aput-object v9, v0, v5

    const/16 v5, 0x9

    aput-object v10, v0, v5

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, v11}, Ljava/lang/Boolean;-><init>(Z)V

    const/16 v16, 0xa

    aput-object v5, v0, v16

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, v12}, Ljava/lang/Boolean;-><init>(Z)V

    const/16 v16, 0xb

    aput-object v5, v0, v16

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, v13}, Ljava/lang/Boolean;-><init>(Z)V

    const/16 v16, 0xc

    aput-object v5, v0, v16

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, v14}, Ljava/lang/Boolean;-><init>(Z)V

    const/16 v16, 0xd

    aput-object v5, v0, v16

    const/16 v5, 0xe

    aput-object v15, v0, v5

    const/16 v5, 0xf

    aput-object p16, v0, v5

    const/16 v5, 0x10

    move-object/from16 v15, p17

    aput-object v15, v0, v5

    const/16 v5, 0x11

    move-object/from16 v15, p18

    aput-object v15, v0, v5

    const-wide v14, 0x2f347a9ce1fe12f8L  # 2.698665142758856E-81

    const/4 v5, 0x0

    invoke-static {v14, v15, v5, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_96
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v5, p16

    iput-object v1, v0, Lcom/aide/engine/EngineSolutionProject;->FH:Ljava/lang/String;

    iput-object v2, v0, Lcom/aide/engine/EngineSolutionProject;->Hw:Ljava/lang/String;

    iput-object v3, v0, Lcom/aide/engine/EngineSolutionProject;->v5:Ljava/lang/String;

    iput-object v4, v0, Lcom/aide/engine/EngineSolutionProject;->Zo:Ljava/util/List;

    move-object/from16 v1, p5

    iput-object v1, v0, Lcom/aide/engine/EngineSolutionProject;->VH:Ljava/util/List;

    iput-boolean v6, v0, Lcom/aide/engine/EngineSolutionProject;->gn:Z

    iput-object v7, v0, Lcom/aide/engine/EngineSolutionProject;->u7:Ljava/lang/String;

    iput-object v8, v0, Lcom/aide/engine/EngineSolutionProject;->tp:Ljava/lang/String;

    iput-object v9, v0, Lcom/aide/engine/EngineSolutionProject;->EQ:Ljava/lang/String;

    iput-object v10, v0, Lcom/aide/engine/EngineSolutionProject;->we:Ljava/lang/String;

    iput-boolean v11, v0, Lcom/aide/engine/EngineSolutionProject;->J0:Z

    iput-boolean v12, v0, Lcom/aide/engine/EngineSolutionProject;->J8:Z

    iput-boolean v13, v0, Lcom/aide/engine/EngineSolutionProject;->Ws:Z

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/aide/engine/EngineSolutionProject;->QX:Z

    move-object/from16 v1, p15

    move-object/from16 v2, p17

    iput-object v1, v0, Lcom/aide/engine/EngineSolutionProject;->XL:Ljava/lang/String;

    iput-object v5, v0, Lcom/aide/engine/EngineSolutionProject;->aM:Ljava/util/List;

    iput-object v2, v0, Lcom/aide/engine/EngineSolutionProject;->j3:Ljava/util/List;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/aide/engine/EngineSolutionProject;->Mr:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 5

    const-wide v0, -0x366cd41928f4554cL  # -2.73624664227927E46

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/EngineSolutionProject;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/EngineSolutionProject;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/EngineSolutionProject;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x2220c59ace5ee757L  # -1.5232233827288893E144

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Lcom/aide/engine/EngineSolutionProject;->FH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aide/engine/EngineSolutionProject;->Hw:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aide/engine/EngineSolutionProject;->v5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/aide/engine/EngineSolutionProject;->gn:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/aide/engine/EngineSolutionProject;->u7:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aide/engine/EngineSolutionProject;->tp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aide/engine/EngineSolutionProject;->EQ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aide/engine/EngineSolutionProject;->we:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/aide/engine/EngineSolutionProject;->J0:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/aide/engine/EngineSolutionProject;->J8:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/aide/engine/EngineSolutionProject;->Ws:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/aide/engine/EngineSolutionProject;->QX:Z

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
    :try_end_6b
    .catchall {:try_start_0 .. :try_end_6b} :catchall_6c

    return-void

    :catchall_6c
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/EngineSolutionProject;->DW:Z

    if-eqz v1, :cond_81

    const-wide v2, -0x2220c59ace5ee757L  # -1.5232233827288893E144

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_81
    throw v0
.end method
