.class final Labcd/oc;
.super Labcd/pc;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/pc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field private static Zo:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static v5:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x609bf359d214eab1L  # 2.3984392506733164E157

    const-wide v2, -0x506c92a6d927800L

    const-class v4, Labcd/oc;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/pc;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x93c28ff6e700f2cL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/oc;->v5:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x276390e2ad5e0d70L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    return p1

    :catchall_22
    move-exception v0

    sget-boolean v1, Labcd/oc;->Zo:Z

    if-eqz v1, :cond_33

    const-wide v2, 0x276390e2ad5e0d70L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_33
    throw v0
.end method
