.class Lcom/aide/ui/build/android/M;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/common/ab;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/build/android/O;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/build/android/O$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aide/common/ab<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field final FH:Ljava/lang/String;

.field final Hw:Ljava/lang/String;

.field final VH:Lcom/aide/ui/build/android/O;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field final Zo:Lcom/aide/ui/build/android/O$a;

.field final v5:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0xea1aba3161df184L  # 3.392042040222766E-238

    const-wide v2, -0x293c3832ec1d33c5L  # -9.29105662349961E109

    const-class v4, Lcom/aide/ui/build/android/M;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/build/android/O;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/build/android/O$a;)V
    .registers 6

    iput-object p1, p0, Lcom/aide/ui/build/android/M;->VH:Lcom/aide/ui/build/android/O;

    iput-object p2, p0, Lcom/aide/ui/build/android/M;->FH:Ljava/lang/String;

    iput-object p3, p0, Lcom/aide/ui/build/android/M;->Hw:Ljava/lang/String;

    iput-object p4, p0, Lcom/aide/ui/build/android/M;->v5:Ljava/lang/String;

    iput-object p5, p0, Lcom/aide/ui/build/android/M;->Zo:Lcom/aide/ui/build/android/O$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/aide/ui/build/android/M;->j6(Ljava/lang/String;)V

    return-void
.end method

.method public j6(Ljava/lang/String;)V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x344d51b3143065cfL
    .end annotation

    const-wide v0, -0xfdcaa193b559580L  # -1.5009397535528572E232

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/M;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v3, p0, Lcom/aide/ui/build/android/M;->VH:Lcom/aide/ui/build/android/O;

    iget-object v4, p0, Lcom/aide/ui/build/android/M;->FH:Ljava/lang/String;

    iget-object v5, p0, Lcom/aide/ui/build/android/M;->Hw:Ljava/lang/String;

    iget-object v6, p0, Lcom/aide/ui/build/android/M;->v5:Ljava/lang/String;

    iget-object v8, p0, Lcom/aide/ui/build/android/M;->Zo:Lcom/aide/ui/build/android/O$a;

    move-object v7, p1

    invoke-static/range {v3 .. v8}, Lcom/aide/ui/build/android/O;->j6(Lcom/aide/ui/build/android/O;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/build/android/O$a;)V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/M;->DW:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v2
.end method
