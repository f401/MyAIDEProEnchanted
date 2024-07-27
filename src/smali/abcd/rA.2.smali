.class public Labcd/rA;
.super Labcd/Sz;


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/Kit;Ljava/lang/String;Ljava/lang/String;Labcd/Jz;)V
    .registers 11

    sget-object v5, Labcd/Fz;->FH:Labcd/Fz;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Labcd/Sz;-><init>(Lio/fabric/sdk/android/Kit;Ljava/lang/String;Ljava/lang/String;Labcd/Jz;Labcd/Fz;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic j6(Labcd/Vz;)Z
    .registers 3

    invoke-super {p0, p1}, Labcd/Sz;->j6(Labcd/Vz;)Z

    move-result v0

    return v0
.end method
