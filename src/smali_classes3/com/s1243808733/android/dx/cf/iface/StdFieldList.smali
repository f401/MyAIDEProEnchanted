.class public final Lcom/s1243808733/android/dx/cf/iface/StdFieldList;
.super Lcom/s1243808733/android/dx/util/FixedSizeList;
.source "StdFieldList.java"

# interfaces
.implements Lcom/s1243808733/android/dx/cf/iface/FieldList;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/FixedSizeList;-><init>(I)V

    return-void
.end method


# virtual methods
.method public get(I)Lcom/s1243808733/android/dx/cf/iface/Field;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 38
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/cf/iface/StdFieldList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/cf/iface/Field;

    return-object v0
.end method

.method public set(ILcom/s1243808733/android/dx/cf/iface/Field;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/s1243808733/android/dx/cf/iface/Field;",
            ")V"
        }
    .end annotation

    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/cf/iface/StdFieldList;->set0(ILjava/lang/Object;)V

    return-void
.end method
