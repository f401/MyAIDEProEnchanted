.class Lcom/aide/ui/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/d;->j6(Ljava/lang/String;JIIILcom/aide/engine/SourceEntity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/aide/engine/SourceEntity;",
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
.field final FH:Lcom/aide/ui/d;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x18aea3fc0f53a649L  # 8.596259399597165E-190

    const-wide v2, -0x27cc5f6addd7fc8L

    const-class v4, Lcom/aide/ui/b;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/d;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/b;->FH:Lcom/aide/ui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/aide/engine/SourceEntity;

    check-cast p2, Lcom/aide/engine/SourceEntity;

    invoke-virtual {p0, p1, p2}, Lcom/aide/ui/b;->j6(Lcom/aide/engine/SourceEntity;Lcom/aide/engine/SourceEntity;)I

    move-result p1

    return p1
.end method

.method public j6(Lcom/aide/engine/SourceEntity;Lcom/aide/engine/SourceEntity;)I
    .registers 10
    .annotation runtime Labcd/su;
        method = 0xe2a76192474c651L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/b;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x4f223e8d5bfaa18fL  # -2.6314225316893415E-73

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1}, Lcom/aide/engine/SourceEntity;->we()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/aide/engine/SourceEntity;->we()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1
    :try_end_20
    .catchall {:try_start_0 .. :try_end_20} :catchall_21

    return p1

    :catchall_21
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/b;->DW:Z

    if-eqz v1, :cond_32

    const-wide v2, -0x4f223e8d5bfaa18fL  # -2.6314225316893415E-73

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    throw v0
.end method
