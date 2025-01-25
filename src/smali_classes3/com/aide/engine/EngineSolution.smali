.class public Lcom/aide/engine/EngineSolution;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/engine/EngineSolution$File;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/aide/engine/EngineSolution;",
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
.field public final FH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aide/engine/EngineSolutionProject;",
            ">;"
        }
    .end annotation
.end field

.field private final Hw:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x280b42a629ac6a5bL
    .end annotation
.end field

.field public Zo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final v5:Ljava/util/TreeMap;
    .annotation runtime Labcd/ru;
        field = 0x3e9fa76e5ef795b0L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x29074ef0f1f382dcL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x215a1dbaaa1a39a7L  # 5.106119280364699E-148

    :try_start_6
    const-class v3, Lcom/aide/engine/EngineSolution;

    const-wide v4, -0x476f5367accc9b79L  # -3.136068332137898E-36

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Lcom/aide/engine/EngineSolution;->j6:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    new-instance v3, Lcom/aide/engine/e;

    invoke-direct {v3}, Lcom/aide/engine/e;-><init>()V

    sput-object v3, Lcom/aide/engine/EngineSolution;->CREATOR:Landroid/os/Parcelable$Creator;
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v3

    sget-boolean v4, Lcom/aide/engine/EngineSolution;->DW:Z

    if-eqz v4, :cond_27

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_27
    throw v3
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, -0x37c72c17c205e0L  # -3.40185104342031E307

    :try_start_6
    sget-boolean v3, Lcom/aide/engine/EngineSolution;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/aide/engine/EngineSolution;->FH:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/aide/engine/EngineSolution;->Hw:Ljava/lang/String;

    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    iput-object v3, p0, Lcom/aide/engine/EngineSolution;->v5:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/aide/engine/EngineSolution;->Zo:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V
    :try_end_41
    .catchall {:try_start_6 .. :try_end_41} :catchall_42

    return-void

    :catchall_42
    move-exception v3

    sget-boolean v4, Lcom/aide/engine/EngineSolution;->DW:Z

    if-eqz v4, :cond_4a

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4a
    throw v3
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/util/TreeMap;Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aide/engine/EngineSolutionProject;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/EngineSolution;->j6:Z

    if-eqz v0, :cond_11

    const-wide v1, 0x261cacf2540d2e30L

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/engine/EngineSolution;->FH:Ljava/util/List;

    iput-object p2, p0, Lcom/aide/engine/EngineSolution;->Hw:Ljava/lang/String;

    iput-object p3, p0, Lcom/aide/engine/EngineSolution;->v5:Ljava/util/TreeMap;

    iput-object p4, p0, Lcom/aide/engine/EngineSolution;->Zo:Ljava/util/List;
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/EngineSolution;->DW:Z

    if-eqz v1, :cond_30

    const-wide v2, 0x261cacf2540d2e30L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v0
.end method

.method private j6(Labcd/La;Labcd/Da;ZILabcd/la;)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0x71785c9c13ade3L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/EngineSolution;->j6:Z

    if-eqz v0, :cond_1a

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p3}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x94840671bccda1dL  # -7.478096450681094E263

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v8, p5

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    invoke-virtual {p2}, Labcd/Da;->yS()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-virtual {p2}, Labcd/Da;->rN()Z

    move-result v0

    if-nez v0, :cond_48

    invoke-virtual {p2}, Labcd/Da;->tp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_51

    invoke-virtual {p2}, Labcd/Da;->Hw()I

    move-result v0

    const/4 v1, 0x0

    :goto_37
    if-ge v1, v0, :cond_51

    invoke-virtual {p2, v1}, Labcd/Da;->j6(I)Labcd/Da;

    move-result-object v4

    move-object v2, p0

    move-object v3, p1

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/aide/engine/EngineSolution;->j6(Labcd/La;Labcd/Da;ZILabcd/la;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    :cond_48
    invoke-direct {p0, p2, p5}, Lcom/aide/engine/EngineSolution;->j6(Labcd/Da;Labcd/la;)Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-virtual {p1, p2, p4, p5, p3}, Labcd/La;->j6(Labcd/Da;ILabcd/la;Z)V
    :try_end_51
    .catchall {:try_start_0 .. :try_end_51} :catchall_52

    :cond_51
    return-void

    :catchall_52
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/EngineSolution;->DW:Z

    if-eqz v1, :cond_6e

    const-wide v2, -0x94840671bccda1dL  # -7.478096450681094E263

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v9, p5

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6e
    goto :goto_70

    :goto_6f
    throw v0

    :goto_70
    goto :goto_6f
.end method

.method private j6(Labcd/Da;Labcd/la;)Z
    .registers 13
    .annotation runtime Labcd/su;
        method = 0xaec7fde56616e51L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/EngineSolution;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x390c779a8c4aedb9L  # 6.8532295873113125E-34

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1}, Labcd/Da;->tp()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Labcd/la;->Hw()[Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Labcd/la;->FH()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v1, :cond_4a

    invoke-static {}, Labcd/pc;->j6()Labcd/pc;

    move-result-object v4

    if-eqz v4, :cond_4a

    array-length v4, v1
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_4b

    const/4 v5, 0x0

    :goto_23
    if-ge v5, v4, :cond_4a

    aget-object v6, v1, v5

    :try_start_27
    invoke-static {}, Labcd/pc;->j6()Labcd/pc;

    move-result-object v7

    invoke-virtual {v7, v0, v6}, Labcd/pc;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_47

    array-length v6, v2
    :try_end_32
    .catchall {:try_start_27 .. :try_end_32} :catchall_4b

    const/4 v7, 0x0

    :goto_33
    if-ge v7, v6, :cond_45

    aget-object v8, v2, v7

    :try_start_37
    invoke-static {}, Labcd/pc;->j6()Labcd/pc;

    move-result-object v9

    invoke-virtual {v9, v0, v8}, Labcd/pc;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8
    :try_end_3f
    .catchall {:try_start_37 .. :try_end_3f} :catchall_4b

    if-eqz v8, :cond_42

    goto :goto_47

    :cond_42
    add-int/lit8 v7, v7, 0x1

    goto :goto_33

    :cond_45
    const/4 p1, 0x1

    return p1

    :cond_47
    :goto_47
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    :cond_4a
    return v3

    :catchall_4b
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/EngineSolution;->DW:Z

    if-eqz v1, :cond_5c

    const-wide v2, 0x390c779a8c4aedb9L  # 6.8532295873113125E-34

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5c
    goto :goto_5e

    :goto_5d
    throw v0

    :goto_5e
    goto :goto_5d
.end method


# virtual methods
.method public describeContents()I
    .registers 5

    const-wide v0, -0x5415eb654a274848L  # -3.8156372870333356E-97

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/EngineSolution;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/EngineSolution;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public j6()J
    .registers 9

    const-wide v0, -0x2586fb7cdbaa8facL  # -6.773985704579408E127

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/EngineSolution;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_17e

    :cond_c
    :try_start_c
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2
    :try_end_12
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c .. :try_end_12} :catch_177
    .catchall {:try_start_c .. :try_end_12} :catchall_17e

    :try_start_12
    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    iget-object v3, p0, Lcom/aide/engine/EngineSolution;->Hw:Ljava/lang/String;

    if-eqz v3, :cond_20

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    :cond_20
    iget-object v3, p0, Lcom/aide/engine/EngineSolution;->Zo:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/security/MessageDigest;->update([B)V

    goto :goto_26

    :cond_3a
    iget-object v3, p0, Lcom/aide/engine/EngineSolution;->FH:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_121

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/aide/engine/EngineSolutionProject;

    iget-object v5, v4, Lcom/aide/engine/EngineSolutionProject;->u7:Ljava/lang/String;

    if-eqz v5, :cond_59

    iget-object v5, v4, Lcom/aide/engine/EngineSolutionProject;->u7:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/security/MessageDigest;->update([B)V

    :cond_59
    iget-object v5, v4, Lcom/aide/engine/EngineSolutionProject;->FH:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/security/MessageDigest;->update([B)V

    iget-object v5, v4, Lcom/aide/engine/EngineSolutionProject;->Hw:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/security/MessageDigest;->update([B)V

    iget-object v5, v4, Lcom/aide/engine/EngineSolutionProject;->v5:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/security/MessageDigest;->update([B)V

    iget-object v5, v4, Lcom/aide/engine/EngineSolutionProject;->XL:Ljava/lang/String;

    if-eqz v5, :cond_81

    iget-object v5, v4, Lcom/aide/engine/EngineSolutionProject;->XL:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/security/MessageDigest;->update([B)V

    :cond_81
    iget-object v5, v4, Lcom/aide/engine/EngineSolutionProject;->aM:Ljava/util/List;

    if-eqz v5, :cond_9f

    iget-object v5, v4, Lcom/aide/engine/EngineSolutionProject;->aM:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/security/MessageDigest;->update([B)V

    goto :goto_8b

    :cond_9f
    iget-boolean v5, v4, Lcom/aide/engine/EngineSolutionProject;->gn:Z

    xor-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    invoke-virtual {v2, v5}, Ljava/security/MessageDigest;->update(B)V

    iget-object v5, v4, Lcom/aide/engine/EngineSolutionProject;->j3:Ljava/util/List;

    if-eqz v5, :cond_c5

    iget-object v5, v4, Lcom/aide/engine/EngineSolutionProject;->j3:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/security/MessageDigest;->update([B)V

    goto :goto_b1

    :cond_c5
    iget-object v5, v4, Lcom/aide/engine/EngineSolutionProject;->we:Ljava/lang/String;

    if-eqz v5, :cond_d2

    iget-object v5, v4, Lcom/aide/engine/EngineSolutionProject;->we:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/security/MessageDigest;->update([B)V

    :cond_d2
    iget-object v5, v4, Lcom/aide/engine/EngineSolutionProject;->VH:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_d8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_ec

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/security/MessageDigest;->update([B)V

    goto :goto_d8

    :cond_ec
    iget-object v4, v4, Lcom/aide/engine/EngineSolutionProject;->Zo:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_f2
    :goto_f2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/aide/engine/EngineSolution$File;

    invoke-static {v5}, Lcom/aide/engine/EngineSolution$File;->DW(Lcom/aide/engine/EngineSolution$File;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_f2

    invoke-static {v5}, Lcom/aide/engine/EngineSolution$File;->FH(Lcom/aide/engine/EngineSolution$File;)Z

    move-result v6

    if-eqz v6, :cond_f2

    invoke-static {v5}, Lcom/aide/engine/EngineSolution$File;->j6(Lcom/aide/engine/EngineSolution$File;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/security/MessageDigest;->update([B)V

    invoke-static {v5}, Lcom/aide/engine/EngineSolution$File;->DW(Lcom/aide/engine/EngineSolution$File;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/security/MessageDigest;->update([B)V

    goto :goto_f2

    :cond_121
    iget-object v3, p0, Lcom/aide/engine/EngineSolution;->v5:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_12b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_162

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/security/MessageDigest;->update([B)V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_14e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/security/MessageDigest;->update([B)V

    goto :goto_14e

    :cond_162
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    :goto_169
    array-length v6, v2
    :try_end_16a
    .catchall {:try_start_12 .. :try_end_16a} :catchall_17e

    if-ge v3, v6, :cond_176

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    aget-byte v6, v2, v3

    int-to-long v6, v6

    xor-long/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_169

    :cond_176
    return-wide v4

    :catch_177
    move-exception v2

    :try_start_178
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    throw v2
    :try_end_17e
    .catchall {:try_start_178 .. :try_end_17e} :catchall_17e

    :catchall_17e
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/EngineSolution;->DW:Z

    if-eqz v3, :cond_186

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_186
    goto :goto_188

    :goto_187
    throw v2

    :goto_188
    goto :goto_187
.end method

.method public j6(Labcd/La;)V
    .registers 29

    move-object/from16 v7, p0

    move-object/from16 v6, p1

    const-wide v4, 0x2ab570c2b50a090bL  # 5.982956057474609E-103

    :try_start_9
    sget-boolean v0, Lcom/aide/engine/EngineSolution;->j6:Z

    if-eqz v0, :cond_10

    invoke-static {v4, v5, v7, v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    invoke-virtual/range {p1 .. p1}, Labcd/La;->DW()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p1 .. p1}, Labcd/La;->v5()[Labcd/la;

    move-result-object v1

    array-length v2, v1
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_1b5

    const/4 v3, 0x0

    :goto_1e
    if-ge v3, v2, :cond_47

    aget-object v8, v1, v3

    :try_start_22
    invoke-interface {v8}, Labcd/la;->j6()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, v7, Lcom/aide/engine/EngineSolution;->v5:Ljava/util/TreeMap;

    invoke-interface {v8}, Labcd/la;->j6()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_44

    iget-object v9, v7, Lcom/aide/engine/EngineSolution;->v5:Ljava/util/TreeMap;

    invoke-interface {v8}, Labcd/la;->j6()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-virtual {v6, v8, v9}, Labcd/La;->j6(Labcd/la;Ljava/util/List;)V

    :cond_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_47
    iget-object v1, v7, Lcom/aide/engine/EngineSolution;->Hw:Ljava/lang/String;

    invoke-virtual {v6, v1}, Labcd/La;->j6(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/aide/engine/EngineSolution;->FH:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_52
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b4

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/aide/engine/EngineSolutionProject;

    iget-object v1, v7, Lcom/aide/engine/EngineSolution;->FH:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iget-object v1, v3, Lcom/aide/engine/EngineSolutionProject;->u7:Ljava/lang/String;
    :try_end_67
    .catchall {:try_start_22 .. :try_end_67} :catchall_1b5

    const-string v8, ""

    if-nez v1, :cond_6d

    move-object v10, v8

    goto :goto_6e

    :cond_6d
    move-object v10, v1

    :goto_6e
    :try_start_6e
    iget-object v1, v3, Lcom/aide/engine/EngineSolutionProject;->XL:Ljava/lang/String;

    if-nez v1, :cond_74

    move-object v14, v8

    goto :goto_75

    :cond_74
    move-object v14, v1

    :goto_75
    iget-object v1, v3, Lcom/aide/engine/EngineSolutionProject;->aM:Ljava/util/List;

    if-nez v1, :cond_7b

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_7b
    move-object v15, v1

    iget-object v1, v3, Lcom/aide/engine/EngineSolutionProject;->j3:Ljava/util/List;

    if-nez v1, :cond_82

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_82
    move-object/from16 v16, v1

    iget-object v1, v3, Lcom/aide/engine/EngineSolutionProject;->Mr:Ljava/util/List;

    if-nez v1, :cond_8a

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_8a
    move-object/from16 v17, v1

    iget-object v1, v3, Lcom/aide/engine/EngineSolutionProject;->we:Ljava/lang/String;

    if-nez v1, :cond_93

    move-object/from16 v20, v8

    goto :goto_95

    :cond_93
    move-object/from16 v20, v1

    :goto_95
    iget-object v11, v3, Lcom/aide/engine/EngineSolutionProject;->FH:Ljava/lang/String;

    iget-object v12, v3, Lcom/aide/engine/EngineSolutionProject;->Hw:Ljava/lang/String;

    iget-object v13, v3, Lcom/aide/engine/EngineSolutionProject;->v5:Ljava/lang/String;

    iget-object v1, v3, Lcom/aide/engine/EngineSolutionProject;->tp:Ljava/lang/String;

    iget-object v9, v3, Lcom/aide/engine/EngineSolutionProject;->EQ:Ljava/lang/String;

    iget-boolean v8, v3, Lcom/aide/engine/EngineSolutionProject;->J0:Z
    :try_end_a1
    .catchall {:try_start_6e .. :try_end_a1} :catchall_1b5

    :try_start_a1
    iget-boolean v4, v3, Lcom/aide/engine/EngineSolutionProject;->J8:Z

    iget-boolean v5, v3, Lcom/aide/engine/EngineSolutionProject;->Ws:Z

    move-object/from16 v26, v0

    iget-boolean v0, v3, Lcom/aide/engine/EngineSolutionProject;->QX:Z

    move/from16 v21, v8

    move-object/from16 v8, p1

    move-object/from16 v19, v9

    move v9, v2

    move-object/from16 v18, v1

    move/from16 v22, v4

    move/from16 v23, v5

    move/from16 v24, v0

    invoke-virtual/range {v8 .. v24}, Labcd/La;->j6(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    iget-object v0, v3, Lcom/aide/engine/EngineSolutionProject;->VH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c1
    :goto_c1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, v7, Lcom/aide/engine/EngineSolution;->FH:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, -0x1

    const/4 v8, -0x1

    :cond_d5
    :goto_d5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/aide/engine/EngineSolutionProject;

    iget-object v10, v9, Lcom/aide/engine/EngineSolutionProject;->FH:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d5

    iget-object v8, v7, Lcom/aide/engine/EngineSolution;->FH:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    goto :goto_d5

    :cond_f0
    if-eq v8, v5, :cond_c1

    invoke-virtual {v6, v2, v8}, Labcd/La;->j6(II)V

    goto :goto_c1

    :cond_f6
    iget-object v0, v3, Lcom/aide/engine/EngineSolutionProject;->Zo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_fc
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aide/engine/EngineSolution$File;

    iget-object v4, v6, Labcd/La;->Mr:Labcd/Ea;

    invoke-static {v1}, Lcom/aide/engine/EngineSolution$File;->j6(Lcom/aide/engine/EngineSolution$File;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Labcd/Ea;->DW(Ljava/lang/String;)Labcd/Da;

    move-result-object v4

    invoke-static {v1}, Lcom/aide/engine/EngineSolution$File;->DW(Lcom/aide/engine/EngineSolution$File;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_152

    invoke-static {v1}, Lcom/aide/engine/EngineSolution$File;->DW(Lcom/aide/engine/EngineSolution$File;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v8, v26

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_154

    invoke-static {v1}, Lcom/aide/engine/EngineSolution$File;->DW(Lcom/aide/engine/EngineSolution$File;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/la;

    invoke-interface {v5}, Labcd/la;->gn()Z

    move-result v9

    if-eqz v9, :cond_154

    move-object v9, v4

    :goto_135
    invoke-virtual {v9}, Labcd/Da;->vy()Z

    move-result v10

    if-nez v10, :cond_154

    new-instance v10, Ljava/io/File;

    invoke-virtual {v9}, Labcd/Da;->XL()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-nez v10, :cond_154

    invoke-virtual {v6, v9, v5}, Labcd/La;->j6(Labcd/Da;Labcd/la;)V

    invoke-virtual {v9}, Labcd/Da;->QX()Labcd/Da;

    move-result-object v9

    goto :goto_135

    :cond_152
    move-object/from16 v8, v26

    :cond_154
    invoke-static {v1}, Lcom/aide/engine/EngineSolution$File;->Hw(Lcom/aide/engine/EngineSolution$File;)Z

    move-result v5

    if-eqz v5, :cond_161

    invoke-static {v1}, Lcom/aide/engine/EngineSolution$File;->v5(Lcom/aide/engine/EngineSolution$File;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v4, v2, v5}, Labcd/La;->j6(Labcd/Da;ILjava/lang/String;)V

    :cond_161
    invoke-static {v1}, Lcom/aide/engine/EngineSolution$File;->DW(Lcom/aide/engine/EngineSolution$File;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_194

    invoke-static {v1}, Lcom/aide/engine/EngineSolution$File;->DW(Lcom/aide/engine/EngineSolution$File;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_194

    invoke-static {v1}, Lcom/aide/engine/EngineSolution$File;->DW(Lcom/aide/engine/EngineSolution$File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Labcd/la;

    iget-boolean v5, v3, Lcom/aide/engine/EngineSolutionProject;->gn:Z
    :try_end_17e
    .catchall {:try_start_a1 .. :try_end_17e} :catchall_1ac

    move-object/from16 v1, p0

    move v10, v2

    move-object/from16 v2, p1

    move-object v11, v3

    move-object v3, v4

    const-wide v12, 0x2ab570c2b50a090bL  # 5.982956057474609E-103

    move v4, v5

    move v5, v10

    move-object v14, v6

    move-object v6, v9

    :try_start_18e
    invoke-direct/range {v1 .. v6}, Lcom/aide/engine/EngineSolution;->j6(Labcd/La;Labcd/Da;ZILabcd/la;)V
    :try_end_191
    .catchall {:try_start_18e .. :try_end_191} :catchall_192

    goto :goto_19c

    :catchall_192
    move-exception v0

    goto :goto_1b8

    :cond_194
    move v10, v2

    move-object v11, v3

    move-object v14, v6

    const-wide v12, 0x2ab570c2b50a090bL  # 5.982956057474609E-103

    :goto_19c
    move-object/from16 v26, v8

    move v2, v10

    move-object v3, v11

    move-object v6, v14

    goto/16 :goto_fc

    :cond_1a3
    move-object/from16 v0, v26

    const-wide v4, 0x2ab570c2b50a090bL  # 5.982956057474609E-103

    goto/16 :goto_52

    :catchall_1ac
    move-exception v0

    move-object v14, v6

    const-wide v12, 0x2ab570c2b50a090bL  # 5.982956057474609E-103

    goto :goto_1b8

    :cond_1b4
    return-void

    :catchall_1b5
    move-exception v0

    move-wide v12, v4

    move-object v14, v6

    :goto_1b8
    sget-boolean v1, Lcom/aide/engine/EngineSolution;->DW:Z

    if-eqz v1, :cond_1bf

    invoke-static {v0, v12, v13, v7, v14}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1bf
    goto :goto_1c1

    :goto_1c0
    throw v0

    :goto_1c1
    goto :goto_1c0
.end method

.method public j6(Lcom/aide/engine/EngineSolutionProject;)V
    .registers 6

    const-wide v0, -0x17ad09a428e78453L  # -3.460581802716096E194

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/EngineSolution;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/EngineSolution;->FH:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/EngineSolution;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 11

    const-string v0, " "

    const-wide v1, -0x1a5a9946846e3cbL  # -4.409522318984303E300

    :try_start_7
    sget-boolean v3, Lcom/aide/engine/EngineSolution;->j6:Z

    if-eqz v3, :cond_e

    invoke-static {v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_e
    iget-object v3, p0, Lcom/aide/engine/EngineSolution;->FH:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_fb

    const-string v4, ""

    :goto_16
    :try_start_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_fa

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/aide/engine/EngineSolutionProject;

    iget-object v6, v5, Lcom/aide/engine/EngineSolutionProject;->Hw:Ljava/lang/String;
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_fb

    const-string v7, "Assembly "

    const-string v8, "\n"

    if-eqz v6, :cond_56

    :try_start_2a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v5, Lcom/aide/engine/EngineSolutionProject;->FH:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v5, Lcom/aide/engine/EngineSolutionProject;->Hw:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "), checked "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v5, Lcom/aide/engine/EngineSolutionProject;->gn:Z

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_51
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_74

    :cond_56
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v5, Lcom/aide/engine/EngineSolutionProject;->FH:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", checked "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v5, Lcom/aide/engine/EngineSolutionProject;->gn:Z

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_51

    :goto_74
    iget-object v6, v5, Lcom/aide/engine/EngineSolutionProject;->VH:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "References "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_7a

    :cond_9e
    iget-object v5, v5, Lcom/aide/engine/EngineSolutionProject;->Zo:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/aide/engine/EngineSolution$File;

    invoke-static {v6}, Lcom/aide/engine/EngineSolution$File;->DW(Lcom/aide/engine/EngineSolution$File;)Ljava/lang/String;

    move-result-object v7
    :try_end_b4
    .catchall {:try_start_2a .. :try_end_b4} :catchall_fb

    if-nez v7, :cond_b9

    const-string v7, "(no plugin)"

    goto :goto_bd

    :cond_b9
    :try_start_b9
    invoke-static {v6}, Lcom/aide/engine/EngineSolution$File;->DW(Lcom/aide/engine/EngineSolution$File;)Ljava/lang/String;

    move-result-object v7

    :goto_bd
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/aide/engine/EngineSolution$File;->j6(Lcom/aide/engine/EngineSolution$File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_a4

    :cond_e9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_f8
    .catchall {:try_start_b9 .. :try_end_f8} :catchall_fb

    goto/16 :goto_16

    :cond_fa
    return-object v4

    :catchall_fb
    move-exception v0

    sget-boolean v3, Lcom/aide/engine/EngineSolution;->DW:Z

    if-eqz v3, :cond_103

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_103
    goto :goto_105

    :goto_104
    throw v0

    :goto_105
    goto :goto_104
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/EngineSolution;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x8a1032a9ae57ef5L  # -9.991818889466294E266

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Lcom/aide/engine/EngineSolution;->Hw:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aide/engine/EngineSolution;->v5:Ljava/util/TreeMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/aide/engine/EngineSolution;->Zo:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V
    :try_end_20
    .catchall {:try_start_0 .. :try_end_20} :catchall_21

    return-void

    :catchall_21
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/EngineSolution;->DW:Z

    if-eqz v1, :cond_36

    const-wide v2, -0x8a1032a9ae57ef5L  # -9.991818889466294E266

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_36
    throw v0
.end method
