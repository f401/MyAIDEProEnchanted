.class public final enum Labcd/ze$a;
.super Ljava/lang/Enum;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/ze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Labcd/ze$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Labcd/ze$a;

.field public static final enum FH:Labcd/ze$a;

.field public static final enum Hw:Labcd/ze$a;

.field private static VH:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static Zo:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field public static final enum j6:Labcd/ze$a;

.field private static final v5:[Labcd/ze$a;


# direct methods
.method static constructor <clinit>()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x41d9cf9e085161dL
    .end annotation

    const/4 v6, 0x0

    :try_start_0
    const-class v0, Labcd/ze$a;

    const-wide v2, -0xe54fe5213e4b3bbL    # -3.5171900876229234E239

    const-wide v4, -0xe54fe5213e4b3bbL    # -3.5171900876229234E239

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Labcd/ze$a;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1b19a762d26a3630L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Labcd/ze$a;

    const-string v1, "ANDROID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Labcd/ze$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/ze$a;->j6:Labcd/ze$a;

    new-instance v0, Labcd/ze$a;

    const-string v1, "JAVA"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Labcd/ze$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/ze$a;->DW:Labcd/ze$a;

    new-instance v0, Labcd/ze$a;

    const-string v1, "WEBSITE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Labcd/ze$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/ze$a;->FH:Labcd/ze$a;

    new-instance v0, Labcd/ze$a;

    const-string v1, "JAVASCRIPT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Labcd/ze$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/ze$a;->Hw:Labcd/ze$a;

    const/4 v0, 0x4

    new-array v0, v0, [Labcd/ze$a;

    const/4 v1, 0x0

    sget-object v2, Labcd/ze$a;->j6:Labcd/ze$a;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Labcd/ze$a;->DW:Labcd/ze$a;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Labcd/ze$a;->FH:Labcd/ze$a;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Labcd/ze$a;->Hw:Labcd/ze$a;

    aput-object v2, v0, v1

    sput-object v0, Labcd/ze$a;->v5:[Labcd/ze$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/ze$a;->VH:Z

    if-eqz v1, :cond_1

    const-wide v2, 0x1b19a762d26a3630L

    invoke-static {v0, v2, v3, v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x4aff227384d289L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-wide v2, -0x1463ce9ce825fb0dL    # -2.317165338688145E210

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/ze$a;->Zo:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v6, -0x1463ce9ce825fb0dL    # -2.317165338688145E210

    const/4 v1, 0x0

    invoke-static {v6, v7, v1, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/ze$a;->VH:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/ze$a;
    .registers 7

    const-wide v4, -0x1bedd2fa6cf73c0L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/ze$a;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1bedd2fa6cf73c0L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-class v0, Labcd/ze$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Labcd/ze$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/ze$a;->VH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static values()[Labcd/ze$a;
    .registers 6

    const-wide v4, 0x61618f65c4373c4L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/ze$a;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x61618f65c4373c4L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget-object v0, Labcd/ze$a;->v5:[Labcd/ze$a;

    invoke-virtual {v0}, [Labcd/ze$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Labcd/ze$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/ze$a;->VH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
