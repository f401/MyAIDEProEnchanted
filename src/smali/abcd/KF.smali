.class public Labcd/KF;
.super Ljava/lang/Object;


# static fields
.field private static final DW:[B

.field private static final FH:[B

.field private static final Hw:[[B

.field static final VH:[B

.field private static final Zo:[B

.field static final j6:[B

.field private static final v5:[B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "diff --git "

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Labcd/KF;->j6:[B

    const-string v0, "diff --cc "

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Labcd/KF;->DW:[B

    const-string v0, "diff --combined "

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Labcd/KF;->FH:[B

    const/4 v0, 0x2

    new-array v0, v0, [[B

    const/4 v1, 0x0

    const-string v2, "Binary files "

    invoke-static {v2}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Files "

    invoke-static {v2}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Labcd/KF;->Hw:[[B

    const-string v0, " differ\n"

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Labcd/KF;->v5:[B

    const-string v0, "GIT binary patch\n"

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Labcd/KF;->Zo:[B

    const-string v0, "-- \n"

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Labcd/KF;->VH:[B

    return-void
.end method
