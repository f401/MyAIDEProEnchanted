.class public final Lutilcode/android/support/v4/graphics/drawable/IconCompatParcelizer;
.super Landroidx/core/graphics/drawable/IconCompatParcelizer;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/core/graphics/drawable/IconCompatParcelizer;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroidx/core/graphics/drawable/IconCompat;
    .registers 2

    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompatParcelizer;->read(Landroidx/versionedparcelable/VersionedParcel;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    return-object v0
.end method

.method public static write(Landroidx/core/graphics/drawable/IconCompat;Landroidx/versionedparcelable/VersionedParcel;)V
    .registers 2

    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/IconCompatParcelizer;->write(Landroidx/core/graphics/drawable/IconCompat;Landroidx/versionedparcelable/VersionedParcel;)V

    return-void
.end method
