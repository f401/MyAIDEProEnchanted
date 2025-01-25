.class public interface abstract Labcd/bN;
.super Ljava/lang/Object;


# static fields
.field public static final DW:Labcd/zL;

.field public static final FH:Labcd/zL;

.field public static final Hw:Labcd/zL;

.field public static final j6:Labcd/zL;

.field public static final v5:Labcd/zL;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Labcd/zL;

    const-string v1, "1.3.6.1.5.5.8.1"

    invoke-direct {v0, v1}, Labcd/zL;-><init>(Ljava/lang/String;)V

    sput-object v0, Labcd/bN;->j6:Labcd/zL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ".1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Labcd/zL;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Labcd/zL;-><init>(Ljava/lang/String;)V

    sput-object v2, Labcd/bN;->DW:Labcd/zL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ".2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Labcd/zL;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Labcd/zL;-><init>(Ljava/lang/String;)V

    sput-object v2, Labcd/bN;->FH:Labcd/zL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ".3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Labcd/zL;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Labcd/zL;-><init>(Ljava/lang/String;)V

    sput-object v2, Labcd/bN;->Hw:Labcd/zL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ".4"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Labcd/zL;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/zL;-><init>(Ljava/lang/String;)V

    sput-object v0, Labcd/bN;->v5:Labcd/zL;

    return-void
.end method
