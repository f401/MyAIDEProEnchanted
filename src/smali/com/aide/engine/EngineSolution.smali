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
            "Landroid/os/Parcelable$Creator",
            "<",
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
            "Ljava/util/List",
            "<",
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
            "Ljava/util/List",
            "<",
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
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x29074ef0f1f382dcL
    .end annotation

    const-wide v8, 0x215a1dbaaa1a39a7L    # 5.106119280364699E-148

    const/4 v6, 0x0

    :try_start_0
    const-class v0, Lcom/aide/engine/EngineSolution;

    const-wide v2, -0x476f5367accc9b79L    # -3.136068332137898E-36

    const-wide v4, -0x476f5367accc9b79L    # -3.136068332137898E-36

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Lcom/aide/engine/EngineSolution;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x215a1dbaaa1a39a7L    # 5.106119280364699E-148

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/engine/e;

    invoke-direct {v0}, Lcom/aide/engine/e;-><init>()V

    sput-object v0, Lcom/aide/engine/EngineSolution;->CREATOR:Landroid/os/Parcelable$Creator;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/EngineSolution;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v8, v9, v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 8

    const-wide v4, -0x37c72c17c205e0L    # -3.40185104342031E307

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/EngineSolution;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x37c72c17c205e0L    # -3.40185104342031E307

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aide/engine/EngineSolution;->FH:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/engine/EngineSolution;->Hw:Ljava/lang/String;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/aide/engine/EngineSolution;->v5:Ljava/util/TreeMap;

    iget-object v0, p0, Lcom/aide/engine/EngineSolution;->v5:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aide/engine/EngineSolution;->Zo:Ljava/util/List;

    iget-object v0, p0, Lcom/aide/engine/EngineSolution;->Zo:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/EngineSolution;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/util/TreeMap;Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aide/engine/EngineSolutionProject;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-wide v8, 0x261cacf2540d2e30L

    const/4 v7, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/EngineSolution;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x261cacf2540d2e30L

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/engine/EngineSolution;->FH:Ljava/util/List;

    iput-object p2, p0, Lcom/aide/engine/EngineSolution;->Hw:Ljava/lang/String;

    iput-object p3, p0, Lcom/aide/engine/EngineSolution;->v5:Ljava/util/TreeMap;

    iput-object p4, p0, Lcom/aide/engine/EngineSolution;->Zo:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/EngineSolution;->DW:Z

    if-eqz v0, :cond_1

    move-wide v2, v8

    move-object v4, v7

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private j6(Labcd/La;Labcd/Da;ZILabcd/la;)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0x71785c9c13ade3L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/EngineSolution;->j6:Z

    if-eqz v0, :cond_0

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p3}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x94840671bccda1dL    # -7.478096450681094E263

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Labcd/Da;->yS()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Labcd/Da;->rN()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Labcd/Da;->tp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Labcd/Da;->Hw()I

    move-result v7

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v7, :cond_2

    invoke-virtual {p2, v6}, Labcd/Da;->j6(I)Labcd/Da;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/aide/engine/EngineSolution;->j6(Labcd/La;Labcd/Da;ZILabcd/la;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2, p5}, Lcom/aide/engine/EngineSolution;->j6(Labcd/Da;Labcd/la;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, p2, p4, p5, p3}, Labcd/La;->j6(Labcd/Da;ILabcd/la;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/EngineSolution;->DW:Z

    if-eqz v0, :cond_3

    const-wide v2, -0x94840671bccda1dL    # -7.478096450681094E263

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v9, p5

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method private j6(Labcd/Da;Labcd/la;)Z
    .registers 15
    .annotation runtime Labcd/su;
        method = 0xaec7fde56616e51L
    .end annotation

    const-wide v2, 0x390c779a8c4aedb9L    # 6.8532295873113125E-34

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Lcom/aide/engine/EngineSolution;->j6:Z

    if-eqz v1, :cond_0

    const-wide v4, 0x390c779a8c4aedb9L    # 6.8532295873113125E-34

    invoke-static {v4, v5, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Labcd/Da;->tp()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2}, Labcd/la;->Hw()[Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2}, Labcd/la;->FH()[Ljava/lang/String;

    move-result-object v7

    if-eqz v6, :cond_4

    invoke-static {}, Labcd/pc;->j6()Labcd/pc;

    move-result-object v1

    if-eqz v1, :cond_4

    array-length v8, v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v0

    :goto_0
    if-ge v4, v8, :cond_4

    aget-object v1, v6, v4

    :try_start_1
    invoke-static {}, Labcd/pc;->j6()Labcd/pc;

    move-result-object v9

    invoke-virtual {v9, v5, v1}, Labcd/pc;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    array-length v9, v7
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move v1, v0

    :goto_1
    if-ge v1, v9, :cond_3

    aget-object v10, v7, v1

    :try_start_2
    invoke-static {}, Labcd/pc;->j6()Labcd/pc;

    move-result-object v11

    invoke-virtual {v11, v5, v10}, Labcd/pc;->j6(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v10

    if-eqz v10, :cond_2

    :cond_1
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    :cond_4
    return v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/EngineSolution;->DW:Z

    if-eqz v0, :cond_5

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v1
.end method


# virtual methods
.method public describeContents()I
    .registers 5

    const-wide v2, -0x5415eb654a274848L    # -3.8156372870333356E-97

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/EngineSolution;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x5415eb654a274848L    # -3.8156372870333356E-97

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/EngineSolution;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()J
    .registers 9

    const-wide v6, -0x2586fb7cdbaa8facL    # -6.773985704579408E127

    const/4 v2, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/EngineSolution;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2586fb7cdbaa8facL    # -6.773985704579408E127

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :try_start_1
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    :try_start_2
    invoke-virtual {v3}, Ljava/security/MessageDigest;->reset()V

    iget-object v0, p0, Lcom/aide/engine/EngineSolution;->Hw:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/engine/EngineSolution;->Hw:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/security/MessageDigest;->update([B)V

    :cond_1
    iget-object v0, p0, Lcom/aide/engine/EngineSolution;->Zo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/security/MessageDigest;->update([B)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/EngineSolution;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/aide/engine/EngineSolution;->FH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/engine/EngineSolutionProject;

    iget-object v1, v0, Lcom/aide/engine/EngineSolutionProject;->u7:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/aide/engine/EngineSolutionProject;->u7:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/security/MessageDigest;->update([B)V

    :cond_5
    iget-object v1, v0, Lcom/aide/engine/EngineSolutionProject;->FH:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/security/MessageDigest;->update([B)V

    iget-object v1, v0, Lcom/aide/engine/EngineSolutionProject;->Hw:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/security/MessageDigest;->update([B)V

    iget-object v1, v0, Lcom/aide/engine/EngineSolutionProject;->v5:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/security/MessageDigest;->update([B)V

    iget-object v1, v0, Lcom/aide/engine/EngineSolutionProject;->XL:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/aide/engine/EngineSolutionProject;->XL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/security/MessageDigest;->update([B)V

    :cond_6
    iget-object v1, v0, Lcom/aide/engine/EngineSolutionProject;->aM:Ljava/util/List;

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/aide/engine/EngineSolutionProject;->aM:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/security/MessageDigest;->update([B)V

    goto :goto_1

    :cond_7
    iget-boolean v1, v0, Lcom/aide/engine/EngineSolutionProject;->gn:Z

    if-eqz v1, :cond_8

    move v1, v2

    :goto_2
    int-to-byte v1, v1

    invoke-virtual {v3, v1}, Ljava/security/MessageDigest;->update(B)V

    iget-object v1, v0, Lcom/aide/engine/EngineSolutionProject;->j3:Ljava/util/List;

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/aide/engine/EngineSolutionProject;->j3:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/security/MessageDigest;->update([B)V

    goto :goto_3

    :cond_8
    const/4 v1, 0x1

    goto :goto_2

    :cond_9
    iget-object v1, v0, Lcom/aide/engine/EngineSolutionProject;->we:Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/aide/engine/EngineSolutionProject;->we:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/security/MessageDigest;->update([B)V

    :cond_a
    iget-object v1, v0, Lcom/aide/engine/EngineSolutionProject;->VH:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/security/MessageDigest;->update([B)V

    goto :goto_4

    :cond_b
    iget-object v0, v0, Lcom/aide/engine/EngineSolutionProject;->Zo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/engine/EngineSolution$File;

    invoke-static {v0}, Lcom/aide/engine/EngineSolution$File;->DW(Lcom/aide/engine/EngineSolution$File;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-static {v0}, Lcom/aide/engine/EngineSolution$File;->FH(Lcom/aide/engine/EngineSolution$File;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-static {v0}, Lcom/aide/engine/EngineSolution$File;->j6(Lcom/aide/engine/EngineSolution$File;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->update([B)V

    invoke-static {v0}, Lcom/aide/engine/EngineSolution$File;->DW(Lcom/aide/engine/EngineSolution$File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/security/MessageDigest;->update([B)V

    goto :goto_5

    :cond_d
    iget-object v0, p0, Lcom/aide/engine/EngineSolution;->v5:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/security/MessageDigest;->update([B)V

    goto :goto_6

    :cond_f
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    const-wide/16 v0, 0x0

    :goto_7
    array-length v4, v3
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    if-ge v2, v4, :cond_10

    const/16 v4, 0x8

    shl-long/2addr v0, v4

    aget-byte v4, v3, v2

    int-to-long v4, v4

    xor-long/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :catch_1
    move-exception v0

    :try_start_4
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :cond_10
    return-wide v0
.end method

.method public j6(Labcd/La;)V
    .registers 24

    :try_start_0
    sget-boolean v2, Lcom/aide/engine/EngineSolution;->j6:Z

    if-eqz v2, :cond_0

    const-wide v2, 0x2ab570c2b50a090bL    # 5.982956057474609E-103

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v2, v3, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Labcd/La;->DW()V

    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p1 .. p1}, Labcd/La;->v5()[Labcd/la;

    move-result-object v4

    array-length v5, v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v6, v4, v3

    :try_start_1
    invoke-interface {v6}, Labcd/la;->j6()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aide/engine/EngineSolution;->v5:Ljava/util/TreeMap;

    invoke-interface {v6}, Labcd/la;->j6()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aide/engine/EngineSolution;->v5:Ljava/util/TreeMap;

    invoke-interface {v6}, Labcd/la;->j6()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v2}, Labcd/La;->j6(Labcd/la;Ljava/util/List;)V

    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aide/engine/EngineSolution;->Hw:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Labcd/La;->j6(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aide/engine/EngineSolution;->FH:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/aide/engine/EngineSolutionProject;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aide/engine/EngineSolution;->FH:Ljava/util/List;

    move-object/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/aide/engine/EngineSolutionProject;->u7:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v4, :cond_4

    const-string v4, ""

    :cond_4
    :try_start_2
    move-object/from16 v0, v19

    iget-object v8, v0, Lcom/aide/engine/EngineSolutionProject;->XL:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v8, :cond_5

    const-string v8, ""

    :cond_5
    :try_start_3
    move-object/from16 v0, v19

    iget-object v9, v0, Lcom/aide/engine/EngineSolutionProject;->aM:Ljava/util/List;

    if-nez v9, :cond_6

    sget-object v9, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_6
    move-object/from16 v0, v19

    iget-object v10, v0, Lcom/aide/engine/EngineSolutionProject;->j3:Ljava/util/List;

    if-nez v10, :cond_7

    sget-object v10, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_7
    move-object/from16 v0, v19

    iget-object v11, v0, Lcom/aide/engine/EngineSolutionProject;->Mr:Ljava/util/List;

    if-nez v11, :cond_8

    sget-object v11, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_8
    move-object/from16 v0, v19

    iget-object v14, v0, Lcom/aide/engine/EngineSolutionProject;->we:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    if-nez v14, :cond_9

    const-string v14, ""

    :cond_9
    :try_start_4
    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/aide/engine/EngineSolutionProject;->FH:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/aide/engine/EngineSolutionProject;->Hw:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/aide/engine/EngineSolutionProject;->v5:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v12, v0, Lcom/aide/engine/EngineSolutionProject;->tp:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v13, v0, Lcom/aide/engine/EngineSolutionProject;->EQ:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-boolean v15, v0, Lcom/aide/engine/EngineSolutionProject;->J0:Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/aide/engine/EngineSolutionProject;->J8:Z

    move/from16 v16, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/aide/engine/EngineSolutionProject;->Ws:Z

    move/from16 v17, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/aide/engine/EngineSolutionProject;->QX:Z

    move/from16 v18, v0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v18}, Labcd/La;->j6(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/aide/engine/EngineSolutionProject;->VH:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aide/engine/EngineSolution;->FH:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v2, -0x1

    move v5, v2

    :cond_b
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/engine/EngineSolutionProject;

    iget-object v8, v2, Lcom/aide/engine/EngineSolutionProject;->FH:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/aide/engine/EngineSolution;->FH:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    move v5, v2

    goto :goto_2

    :cond_c
    const/4 v2, -0x1

    if-eq v5, v2, :cond_a

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Labcd/La;->j6(II)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_3
    sget-boolean v3, Lcom/aide/engine/EngineSolution;->DW:Z

    if-eqz v3, :cond_d

    const-wide v4, 0x2ab570c2b50a090bL    # 5.982956057474609E-103

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v2, v4, v5, v0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    throw v2

    :cond_e
    :try_start_6
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/aide/engine/EngineSolutionProject;->Zo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_f
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/engine/EngineSolution$File;

    move-object/from16 v0, p1

    iget-object v4, v0, Labcd/La;->Mr:Labcd/Ea;

    invoke-static {v2}, Lcom/aide/engine/EngineSolution$File;->j6(Lcom/aide/engine/EngineSolution$File;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Labcd/Ea;->DW(Ljava/lang/String;)Labcd/Da;

    move-result-object v6

    invoke-static {v2}, Lcom/aide/engine/EngineSolution$File;->DW(Lcom/aide/engine/EngineSolution$File;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-static {v2}, Lcom/aide/engine/EngineSolution$File;->DW(Lcom/aide/engine/EngineSolution$File;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-static {v2}, Lcom/aide/engine/EngineSolution$File;->DW(Lcom/aide/engine/EngineSolution$File;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/la;

    invoke-interface {v4}, Labcd/la;->gn()Z

    move-result v5

    if-eqz v5, :cond_10

    move-object v5, v6

    :goto_5
    invoke-virtual {v5}, Labcd/Da;->vy()Z

    move-result v7

    if-nez v7, :cond_10

    new-instance v7, Ljava/io/File;

    invoke-virtual {v5}, Labcd/Da;->XL()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_10

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v4}, Labcd/La;->j6(Labcd/Da;Labcd/la;)V

    invoke-virtual {v5}, Labcd/Da;->QX()Labcd/Da;

    move-result-object v5

    goto :goto_5

    :cond_10
    invoke-static {v2}, Lcom/aide/engine/EngineSolution$File;->Hw(Lcom/aide/engine/EngineSolution$File;)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-static {v2}, Lcom/aide/engine/EngineSolution$File;->v5(Lcom/aide/engine/EngineSolution$File;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v3, v4}, Labcd/La;->j6(Labcd/Da;ILjava/lang/String;)V

    :cond_11
    invoke-static {v2}, Lcom/aide/engine/EngineSolution$File;->DW(Lcom/aide/engine/EngineSolution$File;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-static {v2}, Lcom/aide/engine/EngineSolution$File;->DW(Lcom/aide/engine/EngineSolution$File;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-static {v2}, Lcom/aide/engine/EngineSolution$File;->DW(Lcom/aide/engine/EngineSolution$File;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Labcd/la;

    move-object/from16 v0, v19

    iget-boolean v7, v0, Lcom/aide/engine/EngineSolutionProject;->gn:Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move v8, v3

    :try_start_7
    invoke-direct/range {v4 .. v9}, Lcom/aide/engine/EngineSolution;->j6(Labcd/La;Labcd/Da;ZILabcd/la;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception v2

    goto/16 :goto_3

    :cond_12
    return-void

    :catch_2
    move-exception v2

    goto/16 :goto_3
.end method

.method public j6(Lcom/aide/engine/EngineSolutionProject;)V
    .registers 6

    const-wide v2, -0x17ad09a428e78453L    # -3.460581802716096E194

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/EngineSolution;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x17ad09a428e78453L    # -3.460581802716096E194

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/EngineSolution;->FH:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/EngineSolution;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 11

    const-wide v8, -0x1a5a9946846e3cbL    # -4.409522318984303E300

    :try_start_0
    sget-boolean v2, Lcom/aide/engine/EngineSolution;->j6:Z

    if-eqz v2, :cond_0

    const-wide v2, -0x1a5a9946846e3cbL    # -4.409522318984303E300

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-string v2, ""

    :try_start_1
    iget-object v3, p0, Lcom/aide/engine/EngineSolution;->FH:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v4, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/aide/engine/EngineSolutionProject;

    move-object v3, v0

    iget-object v2, v3, Lcom/aide/engine/EngineSolutionProject;->Hw:Ljava/lang/String;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Assembly "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lcom/aide/engine/EngineSolutionProject;->FH:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lcom/aide/engine/EngineSolutionProject;->Hw:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "), checked "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v3, Lcom/aide/engine/EngineSolutionProject;->gn:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    iget-object v2, v3, Lcom/aide/engine/EngineSolutionProject;->VH:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "References "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Assembly "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lcom/aide/engine/EngineSolutionProject;->FH:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", checked "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v3, Lcom/aide/engine/EngineSolutionProject;->gn:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    iget-object v2, v3, Lcom/aide/engine/EngineSolutionProject;->Zo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v4

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/engine/EngineSolution$File;

    invoke-static {v2}, Lcom/aide/engine/EngineSolution$File;->DW(Lcom/aide/engine/EngineSolution$File;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    if-nez v4, :cond_3

    const-string v4, "(no plugin)"

    :goto_4
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/aide/engine/EngineSolution$File;->j6(Lcom/aide/engine/EngineSolution$File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto :goto_3

    :cond_3
    invoke-static {v2}, Lcom/aide/engine/EngineSolution$File;->DW(Lcom/aide/engine/EngineSolution$File;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    move-object v4, v2

    goto/16 :goto_0

    :catch_0
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/EngineSolution;->DW:Z

    if-eqz v3, :cond_5

    invoke-static {v2, v8, v9, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_5
    throw v2

    :cond_6
    return-object v4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 10

    const-wide v2, -0x8a1032a9ae57ef5L    # -9.991818889466294E266

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/EngineSolution;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x8a1032a9ae57ef5L    # -9.991818889466294E266

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/EngineSolution;->Hw:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aide/engine/EngineSolution;->v5:Ljava/util/TreeMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/aide/engine/EngineSolution;->Zo:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/EngineSolution;->DW:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method
