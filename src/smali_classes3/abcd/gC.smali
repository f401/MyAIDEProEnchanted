.class public Labcd/gC;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/gC$a;
    }
.end annotation


# static fields
.field public static final j6:Labcd/gE$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LgE$b<",
            "Labcd/gC;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final DW:Z

.field private final FH:Labcd/gC$a;

.field private final Hw:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/fC;

    invoke-direct {v0}, Labcd/fC;-><init>()V

    sput-object v0, Labcd/gC;->j6:Labcd/gE$b;

    return-void
.end method

.method private constructor <init>(Labcd/gE;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "noprefix"

    const/4 v1, 0x0

    const-string v2, "diff"

    invoke-virtual {p1, v2, v0, v1}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Labcd/gC;->DW:Z

    const/4 v0, 0x0

    const-string v1, "renames"

    invoke-virtual {p1, v2, v0, v1}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/gC;->j6(Ljava/lang/String;)Labcd/gC$a;

    move-result-object v0

    iput-object v0, p0, Labcd/gC;->FH:Labcd/gC$a;

    const-string v0, "renamelimit"

    const/16 v1, 0xc8

    invoke-virtual {p1, v2, v0, v1}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Labcd/gC;->Hw:I

    return-void
.end method

.method synthetic constructor <init>(Labcd/gE;Labcd/gC;)V
    .registers 3

    invoke-direct {p0, p1}, Labcd/gC;-><init>(Labcd/gE;)V

    return-void
.end method

.method private static j6(Ljava/lang/String;)Labcd/gC$a;
    .registers 6

    if-nez p0, :cond_5

    sget-object p0, Labcd/gC$a;->j6:Labcd/gC$a;

    return-object p0

    :cond_5
    const-string v0, "copy"

    invoke-static {v0, p0}, Labcd/NK;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_48

    const-string v0, "copies"

    invoke-static {v0, p0}, Labcd/NK;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_48

    :cond_16
    invoke-static {p0}, Labcd/NK;->FH(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_25

    sget-object p0, Labcd/gC$a;->DW:Labcd/gC$a;

    return-object p0

    :cond_25
    sget-object p0, Labcd/gC$a;->j6:Labcd/gC$a;

    return-object p0

    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->enumValueNotSupported2:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "diff"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "renames"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_48
    :goto_48
    sget-object p0, Labcd/gC$a;->FH:Labcd/gC$a;

    return-object p0
.end method


# virtual methods
.method public DW()Z
    .registers 2

    iget-boolean v0, p0, Labcd/gC;->DW:Z

    return v0
.end method

.method public FH()Z
    .registers 3

    iget-object v0, p0, Labcd/gC;->FH:Labcd/gC$a;

    sget-object v1, Labcd/gC$a;->j6:Labcd/gC$a;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public j6()I
    .registers 2

    iget v0, p0, Labcd/gC;->Hw:I

    return v0
.end method
