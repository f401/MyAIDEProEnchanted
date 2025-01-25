.class public Labcd/zL;
.super Labcd/oM;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/oM;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>([B)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/oM;-><init>([B)V

    return-void
.end method


# virtual methods
.method public DW(Ljava/lang/String;)Labcd/zL;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Labcd/zL;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Labcd/zL;-><init>(Ljava/lang/String;)V

    return-object p1
.end method
