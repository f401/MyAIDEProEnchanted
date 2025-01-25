.class abstract Labcd/LF;
.super Labcd/XF;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/LF$a;
    }
.end annotation


# static fields
.field static final j6:Labcd/LF;


# instance fields
.field DW:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Labcd/LF$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Labcd/LF$a;-><init>(Labcd/LF$a;)V

    sput-object v0, Labcd/LF;->j6:Labcd/LF;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/XF;-><init>()V

    return-void
.end method

.method protected static j6(Ljava/lang/StringBuilder;Labcd/dG;)V
    .registers 2

    invoke-virtual {p1}, Labcd/dG;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method DW()I
    .registers 2

    iget v0, p0, Labcd/LF;->DW:I

    return v0
.end method

.method public abstract j6()Labcd/dG;
.end method

.method public abstract j6(Labcd/dG;)V
.end method

.method abstract j6(I)Z
.end method
