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
    .registers 2

    new-instance v0, Labcd/zL;

    const-string v1, "1.3.6.1.5.5.8.1"

    invoke-direct {v0, v1}, Labcd/zL;-><init>(Ljava/lang/String;)V

    sput-object v0, Labcd/bN;->j6:Labcd/zL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Labcd/bN;->j6:Labcd/zL;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Labcd/zL;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/zL;-><init>(Ljava/lang/String;)V

    sput-object v1, Labcd/bN;->DW:Labcd/zL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Labcd/bN;->j6:Labcd/zL;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Labcd/zL;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/zL;-><init>(Ljava/lang/String;)V

    sput-object v1, Labcd/bN;->FH:Labcd/zL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Labcd/bN;->j6:Labcd/zL;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Labcd/zL;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/zL;-><init>(Ljava/lang/String;)V

    sput-object v1, Labcd/bN;->Hw:Labcd/zL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Labcd/bN;->j6:Labcd/zL;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Labcd/zL;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/zL;-><init>(Ljava/lang/String;)V

    sput-object v1, Labcd/bN;->v5:Labcd/zL;

    return-void
.end method
